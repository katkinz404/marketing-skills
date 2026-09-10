#!/usr/bin/env bash
# block-send-publish.sh
#
# PURPOSE
#   PreToolUse hook for a PRIVATE client workspace running the local-service-launch kit.
#   The agent drafts to pending-approval/; only the owner or VA publishes, sends, or spends,
#   and only from approved/. This hook is the enforcement layer that CLAUDE.md text cannot be:
#   a hook exit 2 blocks the tool call before permission rules are evaluated, even when an
#   allow rule matches (code.claude.com/docs/en/permissions, "Extend permissions with hooks").
#
#   Exits 2 (block, one-line reason on stderr) when:
#     1. tool_name matches, case-insensitive, extended regex:
#        send|publish|share|delete|trash|post_message|forward|create_pull_request|merge
#        plus notion-create|notion-update|notion-move|notion-duplicate (so the hook matches
#        the Notion deny rules in settings-template.json).
#     2. tool_name is Write, Edit, or MultiEdit and tool_input.file_path ends in
#        truth-ledger.md or product-marketing-context.md (Gate A facts are owner-applied).
#   Exits 0 otherwise. Fails safe (exit 2) if jq is missing or tool_name cannot be read.
#   Known over-block: read-only tools whose names contain a keyword (for example a
#   "list-shared-pages" tool) are also blocked. That fails safe; widen deliberately if needed.
#
# INSTALL
#   1. Copy to <workspace>/.claude/hooks/block-send-publish.sh
#   2. chmod +x <workspace>/.claude/hooks/block-send-publish.sh
#   3. Copy settings-template.json to <workspace>/.claude/settings.json (it registers this
#      script under hooks.PreToolUse with matcher "*" and the path
#      "$CLAUDE_PROJECT_DIR/.claude/hooks/block-send-publish.sh").
#   4. Requires jq on PATH. Verify against code.claude.com/docs/en/hooks before use
#      (hook contract confirmed 2026-09-10: stdin JSON with tool_name and tool_input;
#      exit 2 blocks and stderr is shown to the model).
#
# DRY-RUN (run from <workspace>; log both exit codes in the Day 1-3 checklist)
#   Blocked payload, expect exit=2:
#     echo '{"hook_event_name":"PreToolUse","tool_name":"mcp__Gmail__send_message","tool_input":{"to":"[email]","subject":"test","body":"test"}}' \
#       | .claude/hooks/block-send-publish.sh; echo "exit=$?"
#   Allowed payload, expect exit=0:
#     echo '{"hook_event_name":"PreToolUse","tool_name":"Write","tool_input":{"file_path":"pending-approval/2026-01-01-gbp-description.md","content":"draft"}}' \
#       | .claude/hooks/block-send-publish.sh; echo "exit=$?"
#   Optional protected-file payload, expect exit=2:
#     echo '{"hook_event_name":"PreToolUse","tool_name":"Edit","tool_input":{"file_path":".claude/truth-ledger.md","old_string":"a","new_string":"b"}}' \
#       | .claude/hooks/block-send-publish.sh; echo "exit=$?"

set -u

if ! command -v jq >/dev/null 2>&1; then
  echo "BLOCKED by block-send-publish.sh: jq is not installed, so the hook cannot inspect the call; install jq or remove the hook deliberately." >&2
  exit 2
fi

input=$(cat)
tool_name=$(printf '%s' "$input" | jq -r '.tool_name // empty' 2>/dev/null)
file_path=$(printf '%s' "$input" | jq -r '.tool_input.file_path // empty' 2>/dev/null)

if [[ -z "$tool_name" ]]; then
  echo "BLOCKED by block-send-publish.sh: could not read tool_name from the hook input; failing safe." >&2
  exit 2
fi

shopt -s nocasematch

BLOCK_TOOL_RE='send|publish|share|delete|trash|post_message|forward|create_pull_request|merge|notion-create|notion-update|notion-move|notion-duplicate'
PROTECTED_FILE_RE='truth-ledger\.md$|product-marketing-context\.md$'

if [[ "$tool_name" =~ $BLOCK_TOOL_RE ]]; then
  echo "BLOCKED by block-send-publish.sh: tool '$tool_name' matches a send/publish/share/delete pattern; draft to pending-approval/ and let the owner or VA act from approved/ (Gates B, C, D)." >&2
  exit 2
fi

if [[ "$tool_name" =~ ^(Write|Edit|MultiEdit)$ ]] && [[ "$file_path" =~ $PROTECTED_FILE_RE ]]; then
  echo "BLOCKED by block-send-publish.sh: '$tool_name' on protected file '$file_path'; propose the change in pending-approval/ and the owner applies it (Gate A)." >&2
  exit 2
fi

exit 0
