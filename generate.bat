@echo off
REM Git Alias Generator - Creates tiny batch files for common git commands
REM Run this script to generate git alias batch files

echo Creating Git alias batch files...
echo.

REM Create pl.bat - git pull current branch
echo @echo off > pl.bat
echo git pull >> pl.bat
echo Generated: pl.bat

REM Create ps.bat - git push current branch
echo @echo off > ps.bat
echo git push >> ps.bat
echo Generated: ps.bat

REM Create st.bat - git status
echo @echo off > st.bat
echo git status >> st.bat
echo Generated: st.bat

REM Create a.bat - git add all changes
echo @echo off > a.bat
echo git add . >> a.bat
echo Generated: a.bat

REM Create c.bat - git commit with message (usage: c "message")
echo @echo off > c.bat
echo git commit -m %%* >> c.bat
echo Generated: c.bat

REM Create l.bat - git log with nice formatting
echo @echo off > l.bat
echo git log --oneline --graph --decorate >> l.bat
echo Generated: l.bat

REM Create br.bat - show all branches
echo @echo off > br.bat
echo git branch -a >> br.bat
echo Generated: br.bat

REM Create co.bat - checkout branch (usage: co branch-name)
echo @echo off > co.bat
echo git checkout %%* >> co.bat
echo Generated: co.bat

REM Create d.bat - show changes
echo @echo off > d.bat
echo git diff >> d.bat
echo Generated: d.bat

REM Create rs.bat - reset changes (usage: rs --hard or rs --soft HEAD~1)
echo @echo off > rs.bat
echo git reset %%* >> rs.bat
echo Generated: rs.bat

REM Create sh.bat - stash changes
echo @echo off > sh.bat
echo git stash >> sh.bat
echo Generated: sh.bat

REM Create pop.bat - apply stashed changes
echo @echo off > pop.bat
echo git stash pop >> pop.bat
echo Generated: pop.bat

REM Create f.bat - fetch from remote
echo @echo off > f.bat
echo git fetch >> f.bat
echo Generated: f.bat

REM Create m.bat - merge branch (usage: m branch-name)
echo @echo off > m.bat
echo git merge %%* >> m.bat
echo Generated: m.bat

REM Create cl.bat - clone repository (usage: cl repo-url)
echo @echo off > cl.bat
echo git clone %%* >> cl.bat
echo Generated: cl.bat

REM Create ig.bat - initialize git repository
echo @echo off > ig.bat
echo git init >> ig.bat
echo Generated: ig.bat

REM Create rm.bat - show remote repositories
echo @echo off > rm.bat
echo git remote -v >> rm.bat
echo Generated: rm.bat

REM Create tg.bat - list tags
echo @echo off > tg.bat
echo git tag >> tg.bat
echo Generated: tg.bat

REM Create rb.bat - rebase (usage: rb branch-name or rb -i HEAD~3)
echo @echo off > rb.bat
echo git rebase %%* >> rb.bat
echo Generated: rb.bat

REM Create rbc.bat - continue rebase
echo @echo off > rbc.bat
echo git rebase --continue >> rbc.bat
echo Generated: rbc.bat

REM Create rba.bat - abort rebase
echo @echo off > rba.bat
echo git rebase --abort >> rba.bat
echo Generated: rba.bat

REM Create cp.bat - cherry-pick (usage: cp commit-hash)
echo @echo off > cp.bat
echo git cherry-pick %%* >> cp.bat
echo Generated: cp.bat

REM Create cb.bat - create and switch to new branch (usage: cb new-branch-name)
echo @echo off > cb.bat
echo git checkout -b %%* >> cb.bat
echo Generated: cb.bat

REM Create shl.bat - list stashes
echo @echo off > shl.bat
echo git stash list >> shl.bat
echo Generated: shl.bat

REM Create shd.bat - drop stash (usage: shd stash@{0})
echo @echo off > shd.bat
echo git stash drop %%* >> shd.bat
echo Generated: shd.bat

REM Create shc.bat - clear all stashes
echo @echo off > shc.bat
echo git stash clear >> shc.bat
echo Generated: shc.bat

REM Create sw.bat - show specific commit (usage: sw commit-hash)
echo @echo off > sw.bat
echo git show %%* >> sw.bat
echo Generated: sw.bat

REM Create bl.bat - blame (usage: bl filename)
echo @echo off > bl.bat
echo git blame %%* >> bl.bat
echo Generated: bl.bat

REM Create rl.bat - reflog
echo @echo off > rl.bat
echo git reflog >> rl.bat
echo Generated: rl.bat

REM Create clean.bat - clean untracked files (usage: clean -f)
echo @echo off > clean.bat
echo git clean %%* >> clean.bat
echo Generated: clean.bat

REM Create ls.bat - short log (last 10 commits)
echo @echo off > ls.bat
echo git log --oneline -10 >> ls.bat
echo Generated: ls.bat

REM Create lp.bat - log with patches
echo @echo off > lp.bat
echo git log -p %%* >> lp.bat
echo Generated: lp.bat

REM Create df.bat - diff staged changes
echo @echo off > df.bat
echo git diff --staged >> df.bat
echo Generated: df.bat

REM Create amend.bat - amend last commit
echo @echo off > amend.bat
echo git commit --amend >> amend.bat
echo Generated: amend.bat

REM Create undo.bat - undo last commit (keep changes)
echo @echo off > undo.bat
echo git reset --soft HEAD~1 >> undo.bat
echo Generated: undo.bat

echo.
echo All git alias batch files have been created!
echo.
echo Total: 35 git command aliases generated for faster git operations!
echo.
echo Copy these .bat files to a directory in your PATH to use them as commands:
echo - pl.bat            : git pull
echo - ps.bat            : git push  
echo - st.bat            : git status
echo - a.bat             : git add .
echo - c.bat             : git commit -m "message"
echo - l.bat             : git log --oneline --graph --decorate
echo - br.bat            : git branch -a
echo - co.bat            : git checkout branch-name
echo - d.bat             : git diff
echo - rs.bat            : git reset (with parameters)
echo - sh.bat            : git stash
echo - pop.bat           : git stash pop
echo - f.bat             : git fetch
echo - m.bat             : git merge branch-name
echo - cl.bat            : git clone repo-url
echo - ig.bat            : git init
echo - rm.bat            : git remote -v
echo - tg.bat            : git tag
echo - rb.bat            : git rebase branch-name or -i HEAD~3
echo - rbc.bat           : git rebase --continue
echo - rba.bat           : git rebase --abort
echo - cp.bat            : git cherry-pick commit-hash
echo - cb.bat            : git checkout -b new-branch-name
echo - shl.bat           : git stash list
echo - shd.bat           : git stash drop stash@{0}
echo - shc.bat           : git stash clear
echo - sw.bat            : git show commit-hash
echo - bl.bat            : git blame filename
echo - rl.bat            : git reflog
echo - clean.bat         : git clean (with parameters)
echo - ls.bat            : git log --oneline -10
echo - lp.bat            : git log -p
echo - df.bat            : git diff --staged
echo - amend.bat         : git commit --amend
echo - undo.bat          : git reset --soft HEAD~1
echo.
echo Usage examples:
echo   st                  (instead of git status)
echo   a                   (instead of git add .)
echo   c "my changes"      (instead of git commit -m "my changes")
echo   co main             (instead of git checkout main)
echo   pl                  (instead of git pull)
echo   ps                  (instead of git push)
echo   cb feature-branch   (instead of git checkout -b feature-branch)
echo   rb -i HEAD~3        (instead of git rebase -i HEAD~3)
echo   cp abc123           (instead of git cherry-pick abc123)
echo   shl                 (instead of git stash list)
echo   sw abc123           (instead of git show abc123)
echo   amend               (instead of git commit --amend)
echo   undo                (instead of git reset --soft HEAD~1)
echo.
pause
