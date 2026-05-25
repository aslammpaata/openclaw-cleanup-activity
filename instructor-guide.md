# 🎓 Instructor Guide - OpenClaw Cleanup Activity

**Duration:** 30-45 minutes  
**Class Size:** 1-30 students  
**Level:** Beginner to Intermediate  

---

## Prerequisites Checklist

Before the class, ensure students have:

- [ ] OpenClaw installed (`openclaw --version`)
- [ ] MOR Gateway API key from app.mor.org
- [ ] API key configured in `~/.openclaw/openclaw.json`
- [ ] Web chat access (usually http://localhost:3456)
- [ ] Basic terminal familiarity

---

## Activity Overview

### What Students Will Do

1. **Analyze** a messy directory with their AI agent
2. **Generate** a cleanup plan (not execute immediately)
3. **Review** and approve the plan
4. **Execute** the cleanup
5. **Verify** results and understand decentralization

### Key Learning Moments

| Moment | Teaching Point |
|--------|----------------|
| Agent explores files | AI reads file contents, not just names |
| Agent identifies duplicates | Reasoning about similarity |
| Agent asks before deleting | Safe autonomous behavior |
| Inference happens via Morpheus | Decentralized vs centralized AI |

---

## Step-by-Step Teaching Script

### Introduction (5 minutes)

**Say:**

> "Today we're going to use AI to clean up a messy folder. But here's what makes it special—the AI isn't running on ChatGPT's servers or Claude's API. It's running on the Morpheus decentralized network, powered by MOR tokens and GLM-5, an open-source model."

**Ask:**

- "Who has used ChatGPT or Claude before?"
- "What happens if OpenAI decides to shut down your account?"
- "Who owns the AI model that processes your requests?"

**Key point:** Centralized AI = one company controls access. Decentralized AI = community owns the infrastructure.

---

### Step 1: Setup (5 minutes)

**Distribute the messy directory:**

Option A - Shared script:
```bash
# Have students run this
curl -fsSL https://raw.githubusercontent.com/aslammpaata/openclaw-cleanup-activity/main/messy-docs-setup.sh | bash

```

Option B - Manual creation:
```bash
# Walk students through creating the directory
mkdir -p ~/messy-docs-activity/{documents,docs,Downloads,temp}
# ... (see student worksheet)
```

**Check for the created directory:**
```bash
# Verify everyone has the directory
ls -la ~/messy-docs-activity
```

---

### Step 2: Analyze (5 minutes)

**Instruct students to copy this prompt:**

```
I have a messy documents directory at ~/messy-docs-activity. 
Please explore it and tell me:
1. How many files are there?
2. What patterns of disorganization do you see?
3. Are there any duplicate files?
4. Which files look like junk vs. important?

List everything you find.
```

**While students work, circulate and observe:**
- Are students waiting for responses? (Model inference takes time)
- Is the agent finding all the files?
- Are students reading the agent's reasoning?

**Common issues:**
- Agent can't find directory → check path
- Timeout → model may be slow, wait 30+ seconds
- Permission denied → check file permissions

---

### Step 3: Plan (5 minutes)

**Instruct students to request a plan:**

```
Create a cleanup plan for my messy directory. Include:
1. Which files should be deleted (junk, duplicates)
2. Which files should be consolidated (multiple versions)
3. How to rename files for clarity
4. What directory structure makes sense

Present the plan as a table or bulleted list. DO NOT make any changes yet.
```

**Teaching point:**

> "Notice we said 'DO NOT make changes yet.' This is important—always have the AI show you what it plans to do before executing. This is called 'human-in-the-loop' and prevents mistakes."

**Ask students to compare plans with neighbors:**
- Did everyone get similar plans?
- Any differences in how the AI reasoned?

---

### Step 4: Execute (10 minutes)

**Instruct students to approve execution:**

```
That plan looks good. Please execute it:
1. Create the new directory structure
2. Move files to appropriate locations
3. Delete the junk files you identified
4. Remove empty directories

After each major step, report what you did.
```

**Observe tool usage:**
Point out to students:
- Watch for `write` tool - creating files/directories
- Watch for `exec` tool - running shell commands
- Watch for `edit` tool - modifying files

**Discussion point:**
> "Notice how the AI is making autonomous decisions about your files. It's reasoning about what's junk vs. what's important. This power requires trust—and that's why we reviewed the plan first."

---

### Step 5: Verify (5 minutes)

**Instruct students to verify:**

```
Please verify the cleanup worked:
1. List the final directory structure
2. Confirm no important files were deleted
3. Show the before/after file count
4. Create a summary of what was changed
```

**Check results as a class:**
- How many files before? (Answer: 32)
- How many after? (Answer: ~10-12, depending on the agent's choices)
- What was deleted? (Answer: .tmp, .DS_Store, duplicate proposals)
- What was preserved? (Answer: contracts, invoices, important files)

---

### Step 6: Decentralization Discussion (10 minutes)

**Draw this diagram on the board:**

```
Centralized AI (ChatGPT/Claude):
User → API → OpenAI Servers → Response
              ↓
         One company controls:
         - Model access
         - Pricing
         - Data retention
         - Availability

Decentralized AI (Morpheus):
User → OpenClaw → Morpheus Network → GLM-5 → Response
                         ↓
                  Community-owned:
                  - Stake MOR to access
                  - Open-source model
                  - No single point of failure
                  - Persistent access
```

**Ask discussion questions:**

1. **"What happens if OpenAI bans your account?"**
   - Centralized: You lose access entirely
   - Decentralized: You can stake MOR and access the network

2. **"Who can see your data?"**
   - Both: Data is sent to remote inference
   - Difference: Morpheus uses community-run nodes, not one company

3. **"What if the company raises prices?"**
   - Centralized: You pay or lose access
   - Decentralized: MOR token economics are transparent

4. **"What guarantees do you have about the model?"**
   - Centralized: Proprietary, closed-source
   - Decentralized: GLM-5 is open-source, auditable

**Key takeaway:**
> "Decentralization doesn't mean your data is private by default—but it does mean no single company can cut off your access or change the rules unilaterally."

---

## Assessment

### Quick Quiz (5 minutes)

Ask students to answer:

1. What does the AI analyze to find duplicates?
   - a) File names only
   - b) File contents
   - c) File sizes only
   - Answer: **b) File contents**

2. Why did we ask for a plan before execution?
   - a) To make it take longer
   - b) To review and prevent mistakes
   - c) Because the AI is slow
   - Answer: **b) To review and prevent mistakes**

3. What makes Morpheus "decentralized"?
   - a) It runs on one big server
   - b) It's owned by a company
   - c) It's community-owned, no single controller
   - Answer: **c) Community-owned, no single controller**

4. What token powers Morpheus inference?
   - a) ETH
   - b) BTC
   - c) MOR
   - Answer: **c) MOR**

### Discussion Questions

1. Would you trust this AI to clean up your real files? Why or why not?

2. What would you do differently if you were teaching the AI?

3. How is this different from using `rm` commands yourself?

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Agent can't find directory | Check `~/messy-docs-activity` exists |
| Inference timeout | Wait 30-60 seconds, model may be slow |
| Agent deletes wrong files | Reset directory, emphasize plan review |
| Permission denied | Check file permissions |
| Model refuses to delete | Some models are cautious; be more specific |
| OpenClaw not running | `openclaw gateway start` or restart |

---

## Extension Activities

### For Advanced Students

**Challenge 1: Rollback System**
```
Before cleaning, create a git repository and commit all files.
After cleaning, show how to rollback if needed.
```

**Challenge 2: Log File**
```
Create a cleanup.log file that records every action the agent took.
Include timestamps and file operations.
```

**Challenge 3: Custom Rules**
```
Have students create their own cleanup rules in a file.
The agent reads the rules and applies them.
Discuss: How do you express rules clearly to an AI?
```

### For Slower Paced Classes

- Skip the manual directory creation, use pre-made ZIP
- Work through each step as a whole class
- Use screen sharing to show one student's screen
- Pause for questions after each step

---

## Materials Checklist

**Printed:**
- [ ] Student worksheets (1 per student)
- [ ] Instructor guide (this document)

**Digital:**
- [ ] messy-docs-setup.sh hosted on GitHub
- [ ] OpenClaw installation docs link

**Classroom:**
- [ ] Projector for demonstration
- [ ] Whiteboard for decentralization diagram
- [ ] Backup USB with setup script in case of network issues

---

## Post-Class

### Homework (Optional)

Have students clean up a real folder on their computer using the same process:
1. Analyze
2. Plan
3. Review
4. Execute
5. Verify

Write a short reflection on:
- What went well?
- What would you do differently?
- Do you trust the AI more or less after this?

### Follow-Up Topics

- MOR staking mechanics
- GLM-5 model capabilities and limitations
- Other decentralized AI networks
- File management automation best practices

---

## Quick Reference for Common Questions

**Q: "Why does the AI take so long?"**
A: The model is processing your request on decentralized infrastructure. It's not a single fast server—it's a network, which can be slower but more resilient.

**Q: "Can the AI see all my files?"**
A: Only if you give it access. OpenClaw runs locally and only accesses what you explicitly allow it to.

**Q: "What if I don't have MOR tokens?"**
A: You're using the MOR Gateway, which works like an API. You get free credits with your account.

**Q: "Is the AI always right?"**
A: No. That's why we review the plan before execution. AI can make mistakes—always verify important operations.

---

## Credits

- Activity design: OpenClaw Team
- Inspired by: Practical AI file management workflows
- Model: Morpheus GLM-5 (open-source)
- Infrastructure: Morpheus Network (decentralized)
