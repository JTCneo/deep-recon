# Changelog

All notable changes to `deep-recon` are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- `--pdfs` flag for Explorer PDF collection — Explorer downloads relevant PDFs to `<output_dir>/PDFs/` during web search.

## [1.0.0] — 2026-02-19

Initial public release.

### Added
- Four-agent recon workflow: Explorer (divergent), Associator (lateral), Critic (adversarial), Synthesizer (integrative).
- 2–3 round parallel dispatch via Claude Code's Task tool, with orchestrator cross-pollination between rounds.
- Interactive mode (Socratic — checks in between rounds) and Autonomous mode (end-to-end run).
- Explore intention (divergent — opens possibility space, ends with open questions) and Focus intention (convergent — narrows to a thesis, ends with action plan).
- `--vault-only` flag — skip web search, vault content only.
- `--output <path>` flag — explicit output directory override.
- Anti-hallucination guardrails in the Synthesizer: epistemic honesty rules, observation-vs-invention discipline, ground-every-claim requirement.
- Disk-persisted Synthesizer write — the final document is written directly to its output path by the Synthesizer agent, surviving orchestrator crashes.
- Metrics tracking — per-agent token counts and elapsed times persisted to `_metrics.md` after each round, surviving context compaction.
- Architecture rationale: subagents over agent teams, with the orchestrator as deliberate interpretive layer.
- Obsidian-native output formatting — `[[wikilinks]]`, `> [!callout]` blocks, footnotes, YAML frontmatter, Process Log.

[Unreleased]: https://github.com/kvarnelis/deep-recon/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/kvarnelis/deep-recon/releases/tag/v1.0.0
