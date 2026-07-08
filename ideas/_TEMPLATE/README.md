# Idea folder template

Copy this whole folder to start a new idea:

```bash
cp -r ideas/_TEMPLATE ideas/<your-idea-slug>
```

Then fill `00-idea-capture.md` and run `workflows/1-devalidation.md`. The
numbered artifacts are produced stage by stage; do not skip a gate. `leads.csv`
is git-ignored for real ideas (PII) — only this template copy is tracked.
