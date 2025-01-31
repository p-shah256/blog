+++
title = "Git Cheatsheet"
author = ["Pranchal Shah"]
draft = false
+++

## Git Rebase Guide

#### The Golden Command 🏆
```bash
git rebase --onto master $(git merge-base master your-branch)
```
#### Why It's Amazing
- Surgical precision: Only replays commits unique to your branch
- No duplicate drama: Avoids the "commit déjà vu" syndrome
- Conflict minimization: Less merge pain = more coffee time
####  Full Safety Protocol
```bash
# 1. Backup your branch (because paranoia is a virtue)
git branch your-branch-backup

# 2. Update master (don't build on ancient history)
git checkout master
git pull upstream master

# 3. The magic rebase
git checkout your-branch
git rebase --onto master $(git merge-base master your-branch)

# If things go sideways:
git rebase --abort
git reset --hard your-branch-backup
```

#### Remember It By
Think "archaeological transplant":
- `merge-base`: Find the ancient split point
- `--onto`: Carefully move your precious commits
- `$()`: Your time machine coordinates

Last updated: January 2025
Status: Tested on `kubernetes/kubernetes 🚢


## Let's see our beautiful new commit chain
```bash
git log --oneline --graph -n 10
```
