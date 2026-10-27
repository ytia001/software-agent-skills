# software-agent-skills

Concise, reusable agent skills for the software development lifecycle. One folder per skill; works with Claude, Cursor, and other tools that read `SKILL.md`.

## Skills

| Skill | Stage | What it does |
|-------|-------|--------------|
| [create-software-skill](create-software-skill/SKILL.md) | documentation | Creates a new skill from the template |
| [debug-root-cause](debug-root-cause/SKILL.md) | debugging | Finds a bug's root cause and proposes a minimal fix |
| [design-ui-flow](design-ui-flow/SKILL.md) | design-ui-ux | Specs a UI flow: steps, states, accessibility |

## Stages

plan, dev, test, qa, debugging, api, documentation, design-ui-ux, release, ci-cd, architecture, research, explain.

Each skill has exactly one stage. Add a stage here only when a skill genuinely fits none.

## Install

```bash
./install.sh            # symlink all skills into ~/.claude/skills and ~/.cursor/skills
./install.sh --dry-run  # preview
```

Edits in this repo are live in every agent. Re-run after adding a skill or moving the repo.

## Add a skill

Ask your agent: "use create-software-skill to make a skill for ...". See [TEMPLATE.md](create-software-skill/TEMPLATE.md) for the shape and caps.
