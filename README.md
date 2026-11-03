# CSBU102 LAB 01 — 26560053

Student: PHAM NGUYEN MINH TAM (PHẠM NGUYỄN MINH TÂM)

Each folder contains one standalone MIPS program. Open and assemble one file at a time in MARS 4.5; leave “Assemble all files in directory” disabled. Enable pseudo-instructions and initialization at global main; disable delayed branching and popup input.

| Step | Listing | Source | Expected result |
| --- | --- | --- | --- |
| 0 | 0 | Step_0_Listing_0_Hello_MARS/Lab01_26560053_Step0_Listing0.asm | Hello, MARS! |
| 1.2 | 1 | Step_1_2_Listing_1_Registers/Lab01_26560053_Step1_2_Listing1.asm | t0=12, t1=30, t2=t3=42, zero=0 |
| 2.1–2.2 | 2 | Step_2_1_Listing_2_Addition/Lab01_26560053_Step2_1_Listing2.asm | t0=12; add encodes as 0x012A4020 |
| 2.3 | 3 | Step_2_3_Listing_3_Energy_Usage/Lab01_26560053_TN2.asm | t0–t3: 150,125,165,440 |
| 2.4 | 4 | Step_2_4_Listing_4_Translate_Statements/Lab01_26560053_Step2_4_Listing4.asm | t0–t3: 16,5,8,-3 |
| 3.1 | 5 | Step_3_1_Listing_5_Print_Output/Lab01_26560053_Step3_1_Listing5.asm | Usage (kWh): 150 |
| 3.2 | 6 | Step_3_2_Listing_6_Read_And_Compute/Lab01_26560053_Step3_2_Listing6.asm | Input 1200,1350: Usage (kWh): 150 |
| 3.3 | 7 | Step_3_3_Listing_7_Three_Month_Summary/Lab01_26560053_TN3.asm | See tests below |

The required submission basenames are preserved for Experiment 2 (Listing 3) and Experiment 3 (Listing 7). Other listing filenames identify the lab, student, step and listing. Folder names identify the steps for both submission files.

Listing 4 register plan: y=$s0, z=$s1, w=$s2; x1–x4=$t0–$t3; temporary=$t5. Listing 6: previous=$s0, current=$s1, usage=$t0.

Listing 7 tests (enter one integer per line):

- 1200, 1350, 1475, 1640 → Month 1: 150; Month 2: 125; Month 3: 165; Total: 440.
- Student ID last digit D=3: 1060, 1189, 1304, 1450 → Month 1: 129; Month 2: 115; Month 3: 146; Total: 390.
- Listing 6 with reversed readings 1350,1200 → Usage (kWh): -150. Input-order validation is intentionally absent, as in the LAB.

Listings 3, 4, 6 and 7 contain the completed coding exercises. Step 3.4 asks for temporary changes and restoration; the files here retain the restored programs.

Source checks: eight standalone programs, headers, main entry points, exit syscalls, resolved string labels, and completed placeholders. Expected arithmetic results have been checked. Verified on 2026-11-03 using MARS 4.5 command-line mode: all eight programs assembled successfully. Listings 3 and 4 produced the register values shown above; Listing 6 passed input 1200,1350; Listing 7 passed both the sample and personal D=3 tests, including printed output and registers $t0-$t3. Tests used the global main entry point, pseudo-instructions enabled, and delayed branching disabled.
