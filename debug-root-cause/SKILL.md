---
name: debug-root-cause
description: Finds the root cause of a bug through reproduction, hypothesis testing, and evidence, then proposes a minimal fix. Use when something is broken, a test fails, an error appears, behavior is unexpected, or the user says "debug", "why is this failing", or "find the cause".
---

# Debug Root Cause

**Purpose**: A confirmed root cause with evidence and a minimal proposed fix.

**Stage**: debugging

## When to use
- Failing test, crash, wrong output, regression, flaky behavior, or performance anomaly in any language or stack.

## When not to use
- Building a new feature (dev) or reviewing a working diff (qa).
- The cause is already known and only the fix is needed.

## Workflow
1. Restate the symptom: expected vs actual, plus exact error text.
2. Reproduce it reliably. If it cannot be reproduced, say so and gather logs or inputs first.
3. Narrow the scope: recent changes, failing input, first bad state in the data flow.
4. List 2-3 hypotheses, most likely first. Test each with the cheapest observation (log, assertion, bisect, debugger), changing one thing at a time.
5. Confirm the cause: the evidence must explain the symptom, and removing the cause must remove the symptom.
6. Propose the smallest fix at the cause, not the symptom. Add or name a test that fails before and passes after.
7. Apply the fix only if asked; rerun the reproduction to verify.

## Output format
```
Symptom: <expected vs actual>
Root cause: <one sentence, with file:line>
Evidence: <what was observed that proves it>
Fix: <minimal change>
Verification: <test or command and its result>
```

## Done when
- [ ] Root cause is stated as evidence-backed fact, not a guess.
- [ ] Rejected hypotheses are noted briefly.
- [ ] A reproduction or test demonstrates the symptom and its removal.
- [ ] Unrelated issues noticed along the way are mentioned, not fixed.
