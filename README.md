# Employee Record File Generator

A simple Bash automation script that creates sequentially numbered employee record files. Built for learning shell scripting fundamentals, works natively on macOS and Linux.

---

## 📌 About This Project
This script generates batches of employee text files with unique IDs. It automatically detects the last used ID so you never overwrite existing files or create duplicates — perfect for practicing loops, variables, math, and file handling in Bash.

---

## ✨ Key Features
- ✅ Automatically finds the highest existing employee ID
- ✅ Creates exactly **60 new files per run** (customizable)
- ✅ Stores all files in a dedicated `my_staff_files` folder
- ✅ Never overwrites or duplicates files
- ✅ Works on macOS, Ubuntu, Debian, and all standard Linux systems
- ✅ Full line-by-line comments to help you learn how it works

---

## 📂 Example Output
Each generated file (e.g. `employee12.txt`) contains: