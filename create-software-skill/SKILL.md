---
name: create-software-skill
description: Creates a new concise, reusable agent skill for one software-development-lifecycle stage from a fixed template. Use when the user asks to create, add, or write a new skill, or to turn a repeated dev workflow into a skill.
---

# Create Software Skill

**Purpose**: Produce one new skill folder that passes every cap in `TEMPLATE.md`.

**Stage**: documentation

## When to use
- User wants a new skill for planning, dev, test, QA, debugging, design, release, CI/CD, architecture, API, docs, research, or explaining.

## When not to use
- Editing a skill's content only: edit it directly, then re-check the caps.
- Skills outside the software lifecycle.

## Workflow
1. **Scope gate.** Write down the single deliverable the skill produces and three unrelated contexts it applies to. If either fails, split the skill (does two things) or widen it (too specific).
2. Pick exactly one stage from the README list. Needs two? It is two skills.
3. Ask the user for: triggers, near-misses (when not to use), output shape, and a verifiable done-condition. Skip what is already clear.
4. **Confirm the target directory with the user before writing.** Default: a new folder named after the skill at the root of this repo. A project-local `.cursor/skills/` only if asked.
5. Copy `TEMPLATE.md`, fill every section, delete the caps comment. Add `scripts/`, `references/`, or `examples.md` only for content the agent would otherwise regenerate or need conditionally.
6. Verify against "Done when". Add the skill to the README index.
7. Tell the user to run `install.sh` so Claude and Cursor can see it.

## Output format
A folder `<skill-name>/SKILL.md` (plus optional supporting files), and one new row in the README index.

## Done when
- [ ] Scope gate answers were stated to the user.
- [ ] Body <= 80 lines, no section > 15 lines, Workflow <= 7 steps.
- [ ] `description` <= 350 chars with what and when.
- [ ] Frontmatter is only `name` and `description`; `name` matches the folder.
- [ ] Exactly one `Stage:`; "When not to use" is filled.
- [ ] Supporting files <= 3, none holding workflow prose.
- [ ] Target directory was confirmed; README updated.

Reference skill that passes all checks: `../debug-root-cause/SKILL.md`.
