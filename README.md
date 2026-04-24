<div align="center">

<img src="assets/CompilerDesign.png" alt="Compiler Construction Project Banner" width="100%" style="margin-bottom: 20px; border-radius: 15px; box-shadow: 0 10px 30px rgba(0,0,0,0.15);"/>

<h1>🔧 Compiler Construction — Lexical Analysis & Parsing Fundamentals</h1>

<p style="color: #e65100; margin: 15px 0; font-size: 1.1em;">🚀 A hands-on compiler construction lab repository featuring <b>20 Lex/Flex & Yacc programs</b> covering tokenization, pattern matching, DFA simulation, parsing, expression evaluation, and real-world lexical analysis — built as part of the <b>PCS-601 Compiler Design</b> curriculum.</p>

<p style="font-size: 1.2em; color: #bf360c; background: linear-gradient(135deg, #fff3e0 0%, #ffe0b2 100%); padding: 20px; border-radius: 12px; max-width: 800px; margin: 20px auto; line-height: 1.6; border-left: 4px solid #e65100;">
📚 <b>20 Programs</b> with examples | ⚙️ <b>DFA Simulation</b> | 🔍 <b>Lexical Analysis</b> | 🌳 <b>Yacc Parsing</b> | 🧮 <b>Expression Evaluation</b> | 📄 <b>C Implementation</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Lex-Flex-FF6B6B?style=for-the-badge&logo=gnu&logoColor=white"/>
  <img src="https://img.shields.io/badge/Yacc-Bison-9C27B0?style=for-the-badge&logo=gnu&logoColor=white"/>
  <img src="https://img.shields.io/badge/C-Programming-00599C?style=for-the-badge&logo=c&logoColor=white"/>
  <img src="https://img.shields.io/badge/Compiler-Design-4CAF50?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Lexical-Analysis-FF9800?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Programs-20-blueviolet?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge"/>
</p>

</div>

---

## 📁 Project Structure

```
Compiler-Construction/
│
├── 📂 PCS-601/                          # Lab practice programs
│   │
│   ├── ── Theory ──
│   ├── 📄 P1.txt                        # Study of Lex & Yacc tools (theory notes)
│   │
│   ├── ── Lex Programs ──
│   ├── 📄 P2.l                          # Count lines, spaces, tabs & characters
│   ├── 📄 P3.l                          # Valid C identifier checker
│   ├── 📄 P4.l                          # Integer & floating point number classifier
│   ├── 📄 P5.l                          # C program tokenizer (keywords, operators, etc.)
│   ├── 📄 P6.l                          # Word, character & whitespace counter from file
│   ├── 📄 P7.l                          # Replace multiple whitespaces with single space
│   ├── 📄 P8.l                          # Remove single & multi-line C comments
│   ├── 📄 P9.l                          # Extract HTML tags from HTML file
│   ├── 📄 P10.l                         # Advanced C tokenizer (strings, char literals, etc.)
│   ├── 📄 P11.l                         # Even / odd number checker
│   ├── 📄 P12.l                         # Vowel & consonant counter
│   ├── 📄 P13.l                         # Email address validator
│   ├── 📄 P14.l                         # DFA — accept strings with even a's and even b's
│   ├── 📄 P15.l                         # DFA-based integer, float & identifier classifier
│   ├── 📄 P16.l                         # DFA — accept strings with odd a's or odd b's
│   ├── 📄 P17.l                         # DFA — accept strings matching pattern abb(a|b)*
│   │
│   ├── ── Lex + Yacc Programs ──
│   ├── 📄 P17.y                         # Yacc — standalone arithmetic expression validator
│   ├── 📄 P18.l                         # Lexer for arithmetic expression validator
│   ├── 📄 P18.y                         # Yacc grammar — validates arithmetic expressions
│   ├── 📄 P18.tab.c                     # Auto-generated Yacc C output (do not edit)
│   ├── 📄 P18.tab.h                     # Auto-generated Yacc header (do not edit)
│   ├── 📄 P19.l                         # Lexer for infix to postfix converter
│   ├── 📄 P19.y                         # Yacc grammar — converts infix to postfix notation
│   ├── 📄 P20.l                         # Lexer for arithmetic calculator
│   ├── 📄 P20.y                         # Yacc grammar — evaluates arithmetic expressions
│   │
│   ├── ── Input / Output Files ──
│   ├── 📄 Input.txt                     # Sample text input (used by P6, P7)
│   ├── 📄 input.c                       # Sample C file (used by P8)
│   ├── 📄 sample.html                   # Sample HTML file (used by P9)
│   ├── 📄 tags.txt                      # HTML tags output reference
│   ├── 📄 lex.yy.c                      # Auto-generated Lex output (do not edit)
│   │
│   └── 📄 CompilerDesignLabManual.pdf   # Official lab manual
│
├── 📂 assets/
│   └── 🖼️ CompilerDesign.png            # Project banner image
│
├── 📄 .gitattributes                    # Git language detection config
├── 📄 .gitignore                        # Ignores .DS_Store, compiled binaries, etc.
├── 📄 LICENSE                           # MIT License
└── 📄 README.md                         # Project documentation
```

---

## 💻 PCS-601 — Lab Programs

### 📖 Theory

| # | 📄 File | 📚 Topic |
|---|---------|----------|
| 1 | [P1.txt](PCS-601/P1.txt) | Study of Lex & Yacc — tools, structure, workflow |

### ⚙️ Lex Programs

#### 🔤 Basics & Counting

| # | 📄 File | 📚 Concept |
|---|---------|------------|
| 2 | [P2.l](PCS-601/P2.l) | Counts lines (`\n`), spaces, tabs, and other characters from stdin |
| 3 | [P3.l](PCS-601/P3.l) | Validates whether input strings are valid C identifiers |
| 4 | [P4.l](PCS-601/P4.l) | Classifies input as integer, floating point, or invalid number |
| 11 | [P11.l](PCS-601/P11.l) | Reads a number — prints whether it is even or odd |
| 12 | [P12.l](PCS-601/P12.l) | Counts total vowels and consonants in the entered string |

#### 🔍 Tokenization & Validation

| # | 📄 File | 📚 Concept |
|---|---------|------------|
| 5 | [P5.l](PCS-601/P5.l) | Tokenizes C code into keywords, separators, operators, constants, identifiers |
| 10 | [P10.l](PCS-601/P10.l) | Advanced tokenizer — classifies KEYWORD, STRING, LITERAL, CONSTANT, IDENTIFIER |
| 13 | [P13.l](PCS-601/P13.l) | Validates email addresses using regex pattern matching |

#### 📂 File I/O & Processing

| # | 📄 File | 📚 Concept |
|---|---------|------------|
| 6 | [P6.l](PCS-601/P6.l) | Reads `Input.txt` — counts total characters, words, and whitespaces |
| 7 | [P7.l](PCS-601/P7.l) | Reads `Input.txt` — compresses multiple spaces into one, writes to `Output.txt` |
| 8 | [P8.l](PCS-601/P8.l) | Reads a `.c` file — strips `//` and `/* */` comments, writes to `out.c` |
| 9 | [P9.l](PCS-601/P9.l) | Reads an HTML file — extracts all `<tags>` into an output file |

#### 🧠 DFA Simulation

| # | 📄 File | 📚 Concept |
|---|---------|------------|
| 14 | [P14.l](PCS-601/P14.l) | DFA simulation — accepts strings with even number of `a`'s and `b`'s |
| 15 | [P15.l](PCS-601/P15.l) | DFA-based classifier — identifies integers, floats, and identifiers using states |
| 16 | [P16.l](PCS-601/P16.l) | DFA simulation — accepts strings with odd number of `a`'s or odd number of `b`'s |
| 17 | [P17.l](PCS-601/P17.l) | DFA simulation — accepts strings matching pattern `abb(a\|b)*` |

### 🌳 Lex + Yacc Programs

| # | 📄 Files | 📚 Concept |
|---|---------|------------|
| 17y | [P17.y](PCS-601/P17.y) | Standalone Yacc grammar — validates arithmetic expressions with precedence |
| 18 | [P18.l](PCS-601/P18.l) + [P18.y](PCS-601/P18.y) | Arithmetic expression validator using Lex tokenizer + Yacc grammar parser |
| 19 | [P19.l](PCS-601/P19.l) + [P19.y](PCS-601/P19.y) | Infix to postfix converter — Lex tokenizer + Yacc grammar with `%union` |
| 20 | [P20.l](PCS-601/P20.l) + [P20.y](PCS-601/P20.y) | Arithmetic calculator — evaluates expressions and prints result, handles division by zero |

---

## 🚀 Getting Started

### Prerequisites

- **Flex** — Lexical analyzer generator
- **Bison / Yacc** — Parser generator
- **GCC** — GNU C Compiler
- **Unix / Linux / macOS** terminal

### Install Flex & Bison

```bash
# macOS
brew install flex bison

# Ubuntu / Debian
sudo apt-get install flex bison

# Verify
flex --version && bison --version
```

### Run Any Lex Program

```bash
cd PCS-601

# Step 1 — Generate C code from Lex file
flex P2.l

# Step 2 — Compile
gcc lex.yy.c -o P2 -ll

# Step 3 — Run
./P2
```

### Program-Specific Commands

```bash
# P6, P7 — reads from Input.txt
flex P6.l && gcc lex.yy.c -o P6 -ll && ./P6

# P8 — removes comments from a C file
flex P8.l && gcc lex.yy.c -o P8 -ll && ./P8 input.c

# P9 — extracts HTML tags (prompts for filenames)
flex P9.l && gcc lex.yy.c -o P9 -ll && ./P9

# P17.y — standalone Yacc arithmetic validator
yacc P17.y && gcc y.tab.c -o P17y -ly && ./P17y

# P18 — Lex + Yacc arithmetic expression validator
bison -d P18.y && flex P18.l && gcc P18.tab.c lex.yy.c -o P18 -ll && ./P18

# P19 — Lex + Yacc infix to postfix converter
yacc -d P19.y && flex P19.l && gcc y.tab.c lex.yy.c -o P19 -ll && ./P19

# P20 — Lex + Yacc arithmetic calculator
yacc -d P20.y && flex P20.l && gcc y.tab.c lex.yy.c -o P20 -ll && ./P20
# Enter: 3+5*(2-1)   →   Result = 8
```

> No external dependencies — just Flex, Bison/Yacc, and GCC.

---

## 🎓 Learning Outcomes

After exploring this project, you will understand:

✅ **Lex File Structure** — Definitions, rules, and user code sections  
✅ **Regex Patterns** — Writing patterns for token recognition  
✅ **Lexical Analysis** — Tokenizing C source code end-to-end  
✅ **DFA Simulation** — Implementing states with `%s` and `BEGIN`  
✅ **Comment Stripping** — Removing `//` and `/* */` from C programs  
✅ **File I/O in Lex** — Using `yyin`, `yyout`, `fopen`, `fprintf`  
✅ **Regex Validation** — Email addresses, identifiers, numbers  
✅ **HTML Processing** — Extracting tags from real HTML files  
✅ **Yacc / Bison** — Writing grammars, tokens, precedence, and expression parsers  
✅ **Infix to Postfix** — Converting expressions using Yacc `%union` and semantic actions  
✅ **Expression Evaluation** — Computing arithmetic results with division-by-zero handling  
✅ **Lex + Yacc Integration** — Connecting a lexer and parser end-to-end  

---

## 🛠️ Tech Stack

<div align="center">

<table>
<thead>
<tr>
<th>🖥️ Technology</th>
<th>⚙️ Purpose</th>
<th>📊 What's Covered</th>
</tr>
</thead>
<tbody>
<tr>
<td><img src="https://img.shields.io/badge/Flex-Lex-FF6B6B?style=for-the-badge&logo=gnu&logoColor=white"/></td>
<td>Lexical Analyzer Generator</td>
<td>Pattern matching, token generation, DFA states, start conditions</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white"/></td>
<td>Implementation Language</td>
<td>All programs, file I/O, user code sections, yywrap()</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/Bison-Yacc-9C27B0?style=for-the-badge&logo=gnu&logoColor=white"/></td>
<td>Parser Generator</td>
<td>Grammar rules, operator precedence, expression parsing, evaluation (P17y–P20)</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/GCC-Compiler-4CAF50?style=for-the-badge"/></td>
<td>Compilation</td>
<td>Compiles Lex/Yacc-generated C code into runnable executables</td>
</tr>
</tbody>
</table>

</div>

---

## 🌟 Key Features

- **📄 20 Programs** — 17 Lex + 4 Lex/Yacc, covering a wide range of compiler design concepts
- **📚 Educational** — Clear, well-structured code with progressive difficulty
- **🧠 DFA Simulation** — Real finite automata implemented using Lex states
- **🌳 Yacc Parsing** — Arithmetic expression grammar, infix-to-postfix, and full calculator
- **🧮 Expression Evaluation** — Computes results with operator precedence and error handling
- **🔧 Modular** — Separate `.l` / `.y` file for each concept, easy to explore
- **⚙️ Minimal Setup** — Just Flex, Bison/Yacc, and GCC
- **💡 Learning-Focused** — Step-by-step progression from basics to full parsing

---

## 📞 Contact & Support

<div align="center">

> 💬 *Questions about this project?*  
> Feel free to reach out for help or collaboration!

<br/>

**👤 Abhishek Giri** — Creator & Maintainer

<a href="https://linkedin.com/in/abhishek-giri04">
  <img src="https://img.shields.io/badge/Connect%20on-LinkedIn-0077B5?style=for-the-badge&logo=linkedin" alt="LinkedIn"/>
</a>  
<a href="https://github.com/abhishekgiri04">
  <img src="https://img.shields.io/badge/Follow%20on-GitHub-100000?style=for-the-badge&logo=github" alt="GitHub"/>
</a>  
<a href="mailto:abhishekgiri.dev@gmail.com">
  <img src="https://img.shields.io/badge/Email-Contact-D14836?style=for-the-badge&logo=gmail" alt="Email"/>
</a>

</div>

---

<div align="center">

## 📄 License

This project is open source and available under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

**🔧 Built with ❤️ for Learning Compiler Design**  
*Mastering Lex, Flex, Yacc & C from the ground up*

<p style="font-size: 1.1em; color: #bf360c; margin: 20px 0;">
<b>Compiler Construction</b> — Lexical Analysis & Parsing Fundamentals<br/>
<em>Building strong foundations in compiler design</em>
</p>

---

**© 2026 Abhishek Giri | Compiler Construction**

*Empowering developers with practical compiler design skills*

<img src="https://img.shields.io/badge/Made%20with-Lex%20%26%20Yacc-FF6B6B?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Purpose-Learning-4CAF50?style=for-the-badge"/>
<img src="https://img.shields.io/badge/PRs-Welcome-blueviolet?style=for-the-badge"/>

</div>
