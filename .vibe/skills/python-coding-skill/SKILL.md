---
name: python-coding-skill
description: A skill to handle Python coding tasks with Pylint compliance, comments, and modular design.
author: Jonas Birkeli
version: 1.0.0
skills:
  - name: setup-virtualenv
    description: Set up a virtual environment if it does not exist.
    execution:
      - command: python3 -m venv .venv
        condition: not exists('.venv/bin/activate')
      - command: source .venv/bin/activate

  - name: ensure-pylint-compliance
    description: Ensure the code adheres to Pylint standards.
    parameters:
      - name: code-path
        type: string
        description: Path to the code to be checked.
        required: true
    execution:
      - command: pylint ${code-path}

  - name: modular-design
    description: Organize the code into modules with __init__.py files.
    parameters:
      - name: module-path
        type: string
        description: Path to the module directory.
        required: true
    execution:
      - command: touch ${module-path}/__init__.py
---
