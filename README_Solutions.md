# LAB 01 student coding exercises

PHAM NGUYEN MINH TAM — 26560053

Requirements were read from the complete `CSBU102_LAB01_completed.docx`; `CSBU102_LAB01(1).docx` was not present in the supplied directory. These solutions were implemented afresh from the exercise requirements, without copying the previously prepared ASM files. Existing repository files are retained.

| Folder | Exercise and source file |
| --- | --- |
| LAB01_Step_2_3_Listing_3_Energy_Usage | Step 2.3, Listing 3: `Lab01_26560053_TN2.asm` |
| LAB01_Step_2_4_Listing_4_Arithmetic_Statements | Step 2.4, Listing 4: `Lab01_26560053_Step2_4_Listing4.asm` |
| LAB01_Step_3_2_Listing_6_Meter_Difference | Step 3.2, Listing 6: `Lab01_26560053_Step3_2_Listing6.asm` |
| LAB01_Step_3_3_Listing_7_Three_Month_Report | Step 3.3, Listing 7: `Lab01_26560053_TN3.asm` |
| LAB01_Step_4_Question_4_2_Listing_NA_Print_T5 | Question 4.2 (no listing number): `Lab01_26560053_Step4_Question4_2.asm` |

Listings 0, 1, 2 and 5 are complete examples in the handout, so no new copies are added. Step 3.4 asks for temporary experiments followed by restoration, rather than another submission program. Question 4.2 asks for an instruction sequence; its standalone wrapper initializes `$t5` to 150 and exits after the requested output.

Open one source file at a time in MARS 4.5, assemble, then run. Enable pseudo-instructions and initialization at global `main`; disable delayed branching, popup input and assembly of all files in a directory. Enter each reading on a separate line. Listing 3 uses only `add` and `sub` for the exercise calculations, retaining `addi` for initialization. Listing 4 uses `$t5` for intermediate values. Register allocations are documented in every source header.

Actual MARS 4.5 command-line verification on 2026-11-03: all five new programs assembled successfully and ran. Results:

| Program | Input | Observed result |
| --- | --- | --- |
| Listing 3 | fixed readings | `$t0-$t3`: 150, 125, 165, 440 |
| Listing 4 | y=8, z=5, w=3 | `$t0-$t3`: 16, 5, 8, -3 |
| Listing 6 | 1200, 1350 | `Usage (kWh): 150`; `$t0=150` |
| Listing 6 / Step 3.4(a) | 1350, 1200 | `Usage (kWh): -150`; `$t0=-150` |
| Listing 7 | 1200, 1350, 1475, 1640 | Month 1: 150; Month 2: 125; Month 3: 165; Total: 440; matching `$t0-$t3` |
| Listing 7, D=3 | 1060, 1189, 1304, 1450 | Month 1: 129; Month 2: 115; Month 3: 146; Total: 390; matching `$t0-$t3` |
| Question 4.2 | `$t5=150` | `150` followed by a newline |

Command pattern: `java -jar Mars4_5.jar nc sm dec ae1 se2 path/to/program.asm t0 t1 t2 t3`. Add `a` to assemble without running. Step 3.4(b/c), GUI stepping, backstepping and screenshots were not performed in this verification.
