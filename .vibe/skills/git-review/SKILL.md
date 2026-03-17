---
name: git-commit-skill
description: A skill to perform git diff and commit with a standardized commit message format.
author: Jonas Birkeli
version: 1.0.0
skills:
  - name: git-diff-commit
    description: Perform git diff and commit with a standardized commit message format.
    parameters:
      - name: action
        type: string
        description: The type of action performed (DOCS, FEAT, CHORE, REFACTOR, FIX).
        required: true
      - name: message
        type: string
        description: The commit message describing the changes.
        required: true
    execution:
      - command: git diff
        description: Perform a git diff to see the changes.
      - command: git commit -m "${action}: ${message}"
        description: Commit the changes with the specified message format.
---
