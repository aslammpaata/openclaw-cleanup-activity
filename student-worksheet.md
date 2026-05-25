# 📁 OpenClaw Cleanup Activity - Student Worksheet

**Duration:** 30-45 minutes  
**Level:** Beginner  
**Prerequisites:** OpenClaw installed, MOR Gateway API key configured

---

## Learning Objectives

By the end of this activity, you will:
- ✅ Use an AI agent to analyze and organize files
- ✅ Understand how to give effective instructions to AI
- ✅ See decentralized AI in action (GLM-5 via Morpheus)
- ✅ Learn practical file management automation

---

## Step 1: Set Up the Messy Directory (5 minutes)

### Option A: Run the Setup Script

```bash
# Download and create messy directory
cd ~
curl -fsSL https://raw.githubusercontent.com/aslammpaata/openclaw-cleanup-activity/main/messy-docs-setup.sh -o messy-docs-setup.sh
bash messy-docs-setup.sh
```

### Option B: Manual Setup

```bash
mkdir -p ~/messy-docs-activity/{documents,docs,Downloads,desktop,"old stuff","NEW FOLDER",temp,tmp}
cd ~/messy-docs-activity

# Create duplicates
echo "Project proposal draft" > documents/project_proposal_v1.docx
echo "Project proposal draft" > docs/proposal_final.docx
echo "Project proposal draft" > "NEW FOLDER/Copy of proposal.docx"

# Create version chaos
echo "Report v1" > documents/report_v1.docx
echo "Report v2" > documents/report_v2.docx
echo "Report v2 FINAL" > documents/report_v2_FINAL.docx
echo "Report v2 FINAL FINAL" > documents/report_v2_FINAL_FINAL.docx

# Create junk
echo "temp" > temp/file1.tmp
echo "temp" > temp/file2.tmp
touch temp/empty_file.tmp
touch desktop/.DS_Store

# Create important files (keep these!)
echo "IMPORTANT CONTRACT" > documents/important_contract.pdf
echo "Invoice 2024-001" > Downloads/invoice_2024_001.pdf
```

---

## Step 2: Analyze the Mess (5 minutes)

**Copy and paste this into your OpenClaw chat:**

```
I have a messy documents directory at ~/messy-docs-activity. 
Please explore it and tell me:
1. How many files are there?
2. What patterns of disorganization do you see?
3. Are there any duplicate files?
4. Which files look like junk vs. important?

List everything you find.
```

**Write down what the agent found:**

1. Total files found: ___________
2. Duplicate files: ___________
3. Patterns noticed: ___________

---

## Step 3: Create a Cleanup Plan (5 minutes)

**Copy and paste this into your OpenClaw chat:**

```
Create a cleanup plan for my messy directory. Include:
1. Which files should be deleted (junk, duplicates)
2. Which files should be consolidated (multiple versions)
3. How to rename files for clarity
4. What directory structure makes sense

Present the plan as a table or bulleted list. DO NOT make any changes yet.
```

**Review the plan and check:**
- [ ] Does it identify all junk files?
- [ ] Does it handle duplicates correctly?
- [ ] Are important files preserved?
- [ ] Is the new structure logical?

---

## Step 4: Execute the Cleanup (10 minutes)

**Copy and paste this into your OpenClaw chat:**

```
That plan looks good. Please execute it:
1. Create the new directory structure
2. Move files to appropriate locations
3. Delete the junk files you identified
4. Remove empty directories

After each major step, report what you did.
```

**Watch the agent work:**
- Notice which tools it uses (read, write, exec)
- See how it reasons about file contents
- Observe the order of operations

---

## Step 5: Verify Results (5 minutes)

**Copy and paste this into your OpenClaw chat:**

```
Please verify the cleanup worked:
1. List the final directory structure
2. Confirm no important files were deleted
3. Show the before/after file count
4. Create a summary of what was changed
```

**Fill in the results:**

| Metric | Before | After |
|--------|--------|-------|
| Total Files | ____ | ____ |
| Directories | ____ | ____ |
| Junk Removed | ____ | ____ |

**Were any important files deleted?** ___________

---

## Step 6: Discussion Questions

### Understanding Decentralization

**1. Where did the AI processing happen?**

Draw the path:
```
Your Computer → OpenClaw → _____________ → _____________ → Response
```

**2. What makes this "decentralized"?**

Think about:
- Who owns the AI model?
- Can it be shut down by one company?
- Where does your data go?

**3. Compare to Centralized AI (like ChatGPT):**

| Aspect | ChatGPT | Morpheus/GLM-5 |
|--------|---------|----------------|
| Who owns it? | ___________ | ___________ |
| Can it be censored? | ___________ | ___________ |
| What if the company fails? | ___________ | ___________ |

**4. Why is decentralization valuable?**

List 3 benefits:
1. ___________
2. ___________
3. ___________

---

## Bonus Challenges (Optional)

### Challenge 1: Custom Rules

```
Clean up the directory again with these rules:
- Keep ALL versions in an archive folder
- Only remove actual junk (.tmp, .DS_Store)
- Create a manifest.json listing all files
```

### Challenge 2: Batch Rename

```
Rename all files to follow this convention:
- Lowercase with underscores
- ISO dates where applicable (2024-01-15)
- No spaces or special characters
```

---

## Reflection

**What did you learn about giving instructions to AI?**

________________________________________________

**What surprised you about how the agent analyzed the files?**

________________________________________________

**Would you trust the AI to clean up your actual files? Why or why not?**

________________________________________________

---

## Key Takeaways

✅ **AI agents can reason about file contents** - not just filenames  
✅ **Always ask for a plan before execution** - prevents mistakes  
✅ **Decentralized AI runs on community infrastructure** - not one company  
✅ **MOR tokens power the network** - stake to get inference access  
✅ **Open source models like GLM-5** - transparent and auditable

---

## Quick Reference

**Useful commands:**
```bash
# List files recursively
find ~/messy-docs-activity -type f | sort

# Count files
find ~/messy-docs-activity -type f | wc -l

# Check for duplicates (by content)
find ~/messy-docs-activity -type f -exec md5sum {} + | sort

# Reset the activity (start over)
rm -rf ~/messy-docs-activity
bash messy-docs-setup.sh
```
