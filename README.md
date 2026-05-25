# 📁 OpenClaw Teaching Materials - Activity: Cleaning Up with Decentralized AI

This folder contains teaching materials for a hands-on activity demonstrating decentralized AI file management.

---

## Files

| File | Purpose | Distribute To |
|------|---------|---------------|
| `messy-docs-setup.sh` | Creates the messy directory for students | Students (or host on GitHub) |
| `student-worksheet.md` | Step-by-step student instructions | Students |
| `student-commands.md` | Copy-paste commands for downloading the setup script | Students |
| `instructor-guide.md` | Teaching script and notes | Instructor only |
| `quick-reference.md` | One-page prompt cheat sheet | Students (print) |

---

## Quick Start

### For Instructors

1. Review `instructor-guide.md` for teaching script
2. Host `messy-docs-setup.sh` on GitHub or distribute via USB
3. Print `quick-reference.md` for each student
4. Allow 30-45minutes for the activity

### For Students

1. Ensure OpenClaw is installed and configured
2. Run the setup script to create messy directory:
   ```bash
   bash messy-docs-setup.sh
   ```
3. Open OpenClaw web chat (usually http://localhost:3456) or Host OpenClaw through terminal.
4. Follow the prompts in `student-worksheet.md`

---

## Activity Timeline

| Time | Step | Description |
|------|------|-------------|
| 0:00 | Setup | Create messy directory |
| 0:05 | Analyze | Agent explores and lists files |
| 0:10 | Plan | Agent creates cleanup plan |
| 0:15 | Execute | Agent performs cleanup |
| 0:25 | Verify | Confirm results |
| 0:30 | Discuss | Decentralization concepts |

---

## Learning Objectives

- ✅ Use AI agent for file organization
- ✅ Understand human-in-the-loop AI workflows
- ✅ Compare centralized vs decentralized AI
- ✅ Learn MOR token and Morpheus basics

---

## Technical Requirements

- OpenClaw installed
- MOR Gateway API key configured
- Web chat access (localhost:3456) or Terminal Access
- Bash terminal access

---

## Hosting on GitHub

To make the setup script easily accessible:

1. Create a repository for your teaching materials
2. Upload `messy-docs-setup.sh`
3. Students can run:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/aslammpaata/openclaw-cleanup-activity/main/messy-docs-setup.sh | bash
   ```

---

## Customization

You can modify `messy-docs-setup.sh` to create:
- More duplicates (change the number of copies)
- Larger files (add more content)
- Different file types (add images, PDFs, etc.)
- More complex directory structures

---

## Questions?

- OpenClaw Documentation: https://openclaw.ai
- Morpheus Network: https://mor.org
- GLM-5 Model: https://github.com/THUDM/GLM
