1. Branching Strategy (IMPORTANT)

Most companies use:

main → production
develop → integration
feature/* → new features
release/* → staging
hotfix/* → urgent fixes
2. Feature Branch Workflow
Flow:
main
 ↓
develop
 ↓
feature/login-page
 ↓
Pull Request
 ↓
Merge to develop
3. Pull Request (PR)

PR = code review process before merging

Why used:
Quality control
Code review
Prevent broken production code
4. Merge Types
Type	Meaning
Merge commit	Keeps history
Squash merge	Combines commits
Rebase merge	Linear history
5. Git Rebase vs Merge (INTERVIEW FAVORITE)
Merge:
Keeps full history
Rebase:
Clean linear history
6. Git Stash (VERY IMPORTANT)

Used to temporarily save work:

git stash
git stash pop
7. Git Reset vs Revert
Command	Meaning
reset	Removes commits (local)
revert	Creates new undo commit
8. Forking Workflow

Used in open-source:

Fork → Clone → Modify → PR → Original repo
9. GitHub Actions (CI/CD INTRO)

Basic workflow:

name: CI Pipeline

on: push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - run: echo "Build started"
10. Real Interview Scenario
Question:

How do teams collaborate using GitHub?

Answer:

Teams use feature branching, where developers create separate branches for each feature, raise pull requests for review, and merge into develop or main branch after approval. This ensures code quality and collaboration.