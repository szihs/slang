# PR Review Analysis

Systematic PR analysis with bug detection and structured reporting.

---

## Phase 1: Context Gathering

```
📖 Reading files:
```
- Read project documentation (CLAUDE.md, CONTRIBUTING.md, README)
- Read files directly related to the changes
- Understand the project conventions

```
🔍 Fetching PR:
```
- Get PR metadata and diff using `gh pr view` and `gh pr diff`
- Identify all changed files

```
📜 Git history:
```
- Check recent commits: `git log --oneline -10`
- Review history of changed files

---

## Phase 2: Investigation

```
🔎 Searching patterns:
```
- Search for patterns relevant to the changes
- Look for usages of modified functions/variables
- Find related code that might be affected

```
✅ Validating:
```
- Verify all references resolve correctly
- Check that dependencies exist
- Validate cross-file consistency

---

## Phase 3: Issue Detection

### 🔴 Potential Bugs
- References to things that don't exist
- Logic errors or incorrect behavior
- Security vulnerabilities
- Missing error handling

### 🟡 Flags
- Deprecated patterns
- Performance concerns
- Missing tests
- Inconsistent conventions

### 🔵 Suggestions
- Code improvements
- Documentation gaps
- Refactoring opportunities

---

## Phase 4: Output Format

```markdown
## 📊 PR Analysis Summary
**Files Changed:** N | **+**X **-**Y

---

## 🔴 Potential Bugs (N)

### Bug 1: [Title]
📍 `file:line`
**Problem:** [description]
**Code:** [snippet]
**Fix:** [suggestion]

---

## 🟡 Flags (N)

### Flag 1: [Title]
📍 `file:line`
**Concern:** [description]

---

## 🔵 Suggestions (N)

### Suggestion 1: [Title]
📍 `file:line`
**Improvement:** [description]

---

## 📝 Investigation Log
<details>
<summary>Expand</summary>

[List all files read, searches performed, commands run]

</details>

---

## ✅ Summary
| Category | Count |
|----------|-------|
| 🔴 Bugs | N |
| 🟡 Flags | N |
| 🔵 Suggestions | N |

**Verdict:** APPROVE / REQUEST_CHANGES / COMMENT
```

---

## Requirements

1. Execute actual tool calls (read, search, git commands)
2. Log every investigation action
3. Every finding needs `file:line` reference
4. Show code snippets with fixes
5. Prioritize: bugs → flags → suggestions
