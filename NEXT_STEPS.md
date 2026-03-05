# Next Steps: D. simulans Assembly Analysis

## A) Comparative alignments to identify simulans-specific inversions
Goal: Determine which inversions are present in the *simulans vs simulans reference* alignment, but NOT present in *simulans vs melanogaster reference* alignment.

### 1) Align simulans assembly to D. simulans reference
- Generate nucmer delta
- Run `svmu2 interactive` to visualize dotplots
- Record/annotate inversion candidates

### 2) Align simulans assembly to D. melanogaster reference
- Generate nucmer delta against new reference
- Run `svmu2 interactive`
- Compare inversion locations/patterns vs simulans-ref plots

### 3) Compare results
- Inversions seen only in simulans-ref alignment → likely assembly/ref differences within species
- Inversions also seen vs melanogaster → likely deeper evolutionary rearrangements
- Save a figure: `dsim_alignment_new.png` (whole-genome dotplot for report)

---

## B) Inversions (after svmu2 update)
Goal: Use updated svmu2 to summarize/confirm inversion events.
- Confirm svmu2 is updated and reproducible in `svmu_env`
- Re-run interactive plots after update
- (Optional) Attempt `svmu2 call` on filtered deltas; document whether it succeeds

---

## C) Repeats in simulans assembly
Goal: Characterize repeats; discuss repeat content in the assembly.

### 1) Run RepeatMasker
- Mask repeats on the assembly
- Produce summary tables (repeat classes, % genome masked)

### 2) Use rmtools for repeat parsing/visualization
- Take RepeatMasker output
- Use rmtools to summarize repeat landscapes and/or family composition

---

## D) Heterochromatin / conserved motifs
Goal: Identify conserved motifs and signals associated with heterochromatin.
- Use repeat results + motif analysis approach (define method)
- Compare motifs across regions (e.g., highly repetitive / low complexity areas)
- Summarize conserved motifs (if applicable)

---

## Deliverables checklist
- [ ] simulans vs simulans-ref interactive plots (`html_plots/`)
- [ ] simulans vs melanogaster-ref interactive plots (`html_plots_mel/`)
- [ ] Whole-genome dotplot figure(s): `dsim_alignment_new.png` (and mel comparison)
- [ ] Inversion list + screenshots/notes
- [ ] RepeatMasker summary + rmtools repeat summary
- [ ] Short write-up: which inversions are simulans-only vs shared with melanogaster comparison
