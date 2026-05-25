#!/bin/bash
#
# create-messy-docs.sh
# Generate a messy documents directory for OpenClaw cleanup activity
#
# Usage: bash create-messy-docs.sh [target_dir]
# Default: ~/messy-docs-activity
#

set -e

TARGET_DIR="${1:-$HOME/messy-docs-activity}"

echo "📁 Creating messy documents directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR"

# ─── Create directory structure ─────────────────────────────────────

mkdir -p "documents" "docs" "Downloads" "desktop" "old stuff" "NEW FOLDER" "temp" "tmp"

# ─── Create duplicate files with different names ─────────────────────

echo "Creating duplicate files..."

# Project proposal - 3 copies
cat > "documents/project_proposal_v1.docx" << 'EOF'
PROJECT PROPOSAL
AI Learning Platform

Executive Summary:
This proposal outlines the development of an AI-powered learning platform...
[Document continues - draft version]
EOF

cat > "docs/proposal_final.docx" << 'EOF'
PROJECT PROPOSAL
AI Learning Platform

Executive Summary:
This proposal outlines the development of an AI-powered learning platform...
[Document continues - final version]
EOF

cat > "NEW FOLDER/Copy of proposal.docx" << 'EOF'
PROJECT PROPOSAL
AI Learning Platform

Executive Summary:
This proposal outlines the development of an AI-powered learning platform...
[Document continues - copy]
EOF

# Budget spreadsheet - 2 copies with slight differences
cat > "documents/budget_2024_Q1.xlsx" << 'EOF'
Budget Q1 2024
Marketing: $5,000
Development: $15,000
Operations: $3,000
Total: $23,000
EOF

cat > "desktop/budget draft.xlsx" << 'EOF'
Budget Q1 2024
Marketing: $5,000
Development: $15,500
Operations: $3,000
Total: $23,500
EOF

# Meeting notes - scattered everywhere
cat > "documents/meeting_notes_jan.txt" << 'EOF'
Meeting Notes - January 15, 2024

Attendees: John, Sarah, Mike, Lisa
Topics:
- Project timeline review
- Budget allocation
- Next steps
EOF

cat > "temp/notes.txt" << 'EOF'
Meeting Notes - January 15, 2024

Attendees: John, Sarah, Mike, Lisa
Topics:
- Project timeline review
- Budget allocation
- Next steps
EOF

# ─── Create junk files ───────────────────────────────────────────────

echo "Creating junk files..."

# Random numbered files
for i in 1 2 3 4 5; do
    echo "Temporary file $i content" > "temp/file$i.tmp"
done

# Untitled files
echo "Untitled document content" > "documents/untitled.txt"
echo "Another untitled" > "desktop/untitled 2.txt"

# Screenshot-style names
echo "Screenshot from video call" > "desktop/Screen Shot 2024-01-15 at 3.45 PM.png"
echo "Another screenshot" > "Downloads/Screen Shot 2024-01-16 at 10.22 AM.png"

# Versioned files gone wrong
cat > "documents/report_v1.docx" << 'EOF'
Report Version 1
Initial draft...
EOF

cat > "documents/report_v2.docx" << 'EOF'
Report Version 2
Updated draft...
EOF

cat > "documents/report_v2_FINAL.docx" << 'EOF'
Report Version 2 FINAL
Updated draft...
EOF

cat > "documents/report_v2_FINAL_FINAL.docx" << 'EOF'
Report Version 2 FINAL FINAL
Updated draft...
EOF

cat > "documents/report_v2_FINAL_FINAL_v2_USE_THIS_ONE.docx" << 'EOF'
Report Version 2 FINAL FINAL v2 USE THIS ONE
This is the actual final version.
EOF

# ─── Create confusing names ──────────────────────────────────────────

echo "Creating confusing file names..."

echo "Invoice data" > "temp/Document1.pdf"
echo "Presentation slides" > "documents/New Document (2).docx"
echo "Contact list" > "Downloads/Copy of Copy of contacts.xlsx"
echo "Notes from call" > "old stuff/file (1).txt"

# Empty files
touch "temp/empty_file.tmp"
touch "desktop/.DS_Store"
touch "documents/~\$temp.docx"

# ─── Create legitimate files to find ─────────────────────────────────

echo "Creating legitimate files..."

cat > "documents/important_contract.pdf" << 'EOF'
IMPORTANT CONTRACT
This is a legitimate signed contract.
DO NOT DELETE.
Party A: Company Inc.
Party B: Client Corp.
Date: January 1, 2024
EOF

cat > "desktop/presentation.pptx" << 'EOF'
QUARTERLY PRESENTATION
Slide 1: Overview
Slide 2: Metrics
Slide 3: Goals
Slide 4: Action Items
EOF

cat > "Downloads/invoice_2024_001.pdf" << 'EOF'
INVOICE #2024-001
Date: January 10, 2024
Amount: $1,500.00
Status: Paid
EOF

# ─── Create subdirectory mess ───────────────────────────────────────

echo "Creating nested mess..."

mkdir -p "documents/old" "documents/archive" "temp/cache" "temp/logs"

cat > "documents/old/deprecated_config.json" << 'EOF'
{
    "version": "1.0",
    "deprecated": true,
    "settings": {}
}
EOF

cat > "temp/cache/cache_data.tmp" << 'EOF'
cached data - can be deleted
EOF

cat > "temp/logs/error.log" << 'EOF'
[ERROR] 2024-01-15 14:30: Something went wrong
[ERROR] 2024-01-15 14:31: Retry failed
EOF

# ─── Summary ─────────────────────────────────────────────────────────

echo ""
echo "✅ Messy directory created at: $TARGET_DIR"
echo ""
echo "📊 Summary:"
find "$TARGET_DIR" -type f | wc -l | xargs echo "  Files created:"
find "$TARGET_DIR" -type d | wc -l | xargs echo "  Directories:"
du -sh "$TARGET_DIR" | awk '{print "  Size: " $1}'
echo ""
echo "🎯 Files include:"
echo "  - Multiple duplicate files with different names"
echo "  - Version chaos (FINAL_FINAL files)"
echo "  - Junk temporary files"
echo "  - Screenshots in wrong locations"
echo "  - Empty files"
echo "  - Hidden system files (.DS_Store)"
echo "  - Some legitimate files to preserve"
echo ""
echo "Next: Students will ask their OpenClaw agent to clean this up!"