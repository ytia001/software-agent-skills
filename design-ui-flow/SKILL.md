---
name: design-ui-flow
description: Designs a user-facing screen or flow as a clear spec covering user goal, steps, states, and accessibility, before any code. Use when planning UI/UX for a feature, screen, form, or onboarding, or when the user asks for a flow, wireframe description, or UX review.
---

# Design UI Flow

**Purpose**: A concise UI/UX spec for one flow that a developer can build from.

**Stage**: design-ui-ux

## When to use
- Designing or redesigning a screen, form, wizard, dashboard, or interaction.
- Reviewing an existing flow for friction.

## When not to use
- Implementing components (dev) or choosing system boundaries (architecture).
- Visual branding work needing a design tool.

## Workflow
1. State the user, their goal, and the success moment in one sentence each.
2. List the steps from entry to success as the shortest path; note decisions and exits.
3. For each screen, define its content, primary action, and secondary actions. One primary action per screen.
4. Define states for every data-driven element: empty, loading, error, partial, success.
5. Cover accessibility: keyboard order, labels, contrast, focus, error announcements.
6. Note edge cases: long text, no permission, offline, slow network, mobile width.
7. Flag open questions and assumptions instead of silently deciding.

## Output format
```
Goal: <user, goal, success>
Flow: 1. <screen> -> 2. <screen> -> ...
Screen <n>: content / primary action / secondary / states
Accessibility: <notes>
Edge cases: <list>
Open questions: <list>
```
Use text or ASCII sketches; reuse the project's existing components and patterns.

## Done when
- [ ] Every screen has exactly one primary action.
- [ ] Empty, loading, and error states are specified.
- [ ] Accessibility notes are present.
- [ ] Open questions are listed, not hidden.
