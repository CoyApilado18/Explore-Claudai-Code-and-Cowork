#!/usr/bin/env bash
# which-claude.sh — helps you decide which Claude tool to use.

echo "What do you need to do?"
echo "  a) Explore data or ask questions"
echo "  b) Write code or build something"
echo "  c) Organize files or automate tasks"
echo

while true; do
  read -r -p "Enter a, b, or c: " choice
  case "${choice,,}" in
    a)
      echo
      echo "Recommendation: Claude.ai — best for uploading files, asking questions, and generating Artifacts."
      echo "Tip: Go to claude.ai, drag a file into the chat, and ask Claude to summarize or chart it."
      break
      ;;
    b)
      echo
      echo "Recommendation: Claude Code — best for writing code, reading files, and building projects."
      echo "Tip: cd into your project folder, run 'claude', and type /init to generate a CLAUDE.md."
      break
      ;;
    c)
      echo
      echo "Recommendation: Cowork — best for organizing folders, renaming files, and hands-off tasks."
      echo "Tip: Open the Claude desktop app, switch to Cowork, grant access to a folder, and describe the outcome you want."
      break
      ;;
    *)
      echo "Invalid choice. Please enter a, b, or c."
      ;;
  esac
done
