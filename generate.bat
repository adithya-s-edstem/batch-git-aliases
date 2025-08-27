@echo off
REM Git Alias Generator - Creates tiny batch files for common git commands
REM Run this script to generate git alias batch files

echo Creating Git alias batch files...
echo.

REM Create aliases directory if it doesn't exist
if not exist "aliases" mkdir aliases
echo Created 'aliases' directory for generated files
echo.

REM Create pl.bat - git pull current branch
echo @echo off > aliases\pl.bat
echo git pull >> aliases\pl.bat
echo Generated: aliases\pl.bat

REM Create ps.bat - git push current branch
echo @echo off > aliases\ps.bat
echo git push >> aliases\ps.bat
echo Generated: aliases\ps.bat

REM Create st.bat - git status
echo @echo off > aliases\st.bat
echo git status >> aliases\st.bat
echo Generated: aliases\st.bat

REM Create a.bat - git add all changes
echo @echo off > aliases\a.bat
echo git add . >> aliases\a.bat
echo Generated: aliases\a.bat

REM Create c.bat - git commit with message (usage: c "message")
echo @echo off > aliases\c.bat
echo git commit -m %%* >> aliases\c.bat
echo Generated: aliases\c.bat

REM Create l.bat - git log with nice formatting
echo @echo off > aliases\l.bat
echo git log --oneline --graph --decorate >> aliases\l.bat
echo Generated: aliases\l.bat

REM Create br.bat - show all branches
echo @echo off > aliases\br.bat
echo git branch -a >> aliases\br.bat
echo Generated: aliases\br.bat

REM Create co.bat - checkout branch (usage: co branch-name)
echo @echo off > aliases\co.bat
echo git checkout %%* >> aliases\co.bat
echo Generated: aliases\co.bat

REM Create d.bat - show changes
echo @echo off > aliases\d.bat
echo git diff >> aliases\d.bat
echo Generated: aliases\d.bat

REM Create rs.bat - reset changes (usage: rs --hard or rs --soft HEAD~1)
echo @echo off > aliases\rs.bat
echo git reset %%* >> aliases\rs.bat
echo Generated: aliases\rs.bat

REM Create sh.bat - stash changes
echo @echo off > aliases\sh.bat
echo git stash >> aliases\sh.bat
echo Generated: aliases\sh.bat

REM Create pop.bat - apply stashed changes
echo @echo off > aliases\pop.bat
echo git stash pop >> aliases\pop.bat
echo Generated: aliases\pop.bat

REM Create f.bat - fetch from remote
echo @echo off > aliases\f.bat
echo git fetch >> aliases\f.bat
echo Generated: aliases\f.bat

REM Create m.bat - merge branch (usage: m branch-name)
echo @echo off > aliases\m.bat
echo git merge %%* >> aliases\m.bat
echo Generated: aliases\m.bat

REM Create cl.bat - clone repository (usage: cl repo-url)
echo @echo off > aliases\cl.bat
echo git clone %%* >> aliases\cl.bat
echo Generated: aliases\cl.bat

REM Create ig.bat - initialize git repository
echo @echo off > aliases\ig.bat
echo git init >> aliases\ig.bat
echo Generated: aliases\ig.bat

REM Create rm.bat - show remote repositories
echo @echo off > aliases\rm.bat
echo git remote -v >> aliases\rm.bat
echo Generated: aliases\rm.bat

REM Create tg.bat - list tags
echo @echo off > aliases\tg.bat
echo git tag >> aliases\tg.bat
echo Generated: aliases\tg.bat

REM Create rb.bat - rebase (usage: rb branch-name or rb -i HEAD~3)
echo @echo off > aliases\rb.bat
echo git rebase %%* >> aliases\rb.bat
echo Generated: aliases\rb.bat

REM Create rbc.bat - continue rebase
echo @echo off > aliases\rbc.bat
echo git rebase --continue >> aliases\rbc.bat
echo Generated: aliases\rbc.bat

REM Create rba.bat - abort rebase
echo @echo off > aliases\rba.bat
echo git rebase --abort >> aliases\rba.bat
echo Generated: aliases\rba.bat

REM Create cp.bat - cherry-pick (usage: cp commit-hash)
echo @echo off > aliases\cp.bat
echo git cherry-pick %%* >> aliases\cp.bat
echo Generated: aliases\cp.bat

REM Create cb.bat - create and switch to new branch (usage: cb new-branch-name)
echo @echo off > aliases\cb.bat
echo git checkout -b %%* >> aliases\cb.bat
echo Generated: aliases\cb.bat

REM Create shl.bat - list stashes
echo @echo off > aliases\shl.bat
echo git stash list >> aliases\shl.bat
echo Generated: aliases\shl.bat

REM Create shd.bat - drop stash (usage: shd stash@{0})
echo @echo off > aliases\shd.bat
echo git stash drop %%* >> aliases\shd.bat
echo Generated: aliases\shd.bat

REM Create shc.bat - clear all stashes
echo @echo off > aliases\shc.bat
echo git stash clear >> aliases\shc.bat
echo Generated: aliases\shc.bat

REM Create sw.bat - show specific commit (usage: sw commit-hash)
echo @echo off > aliases\sw.bat
echo git show %%* >> aliases\sw.bat
echo Generated: aliases\sw.bat

REM Create bl.bat - blame (usage: bl filename)
echo @echo off > aliases\bl.bat
echo git blame %%* >> aliases\bl.bat
echo Generated: aliases\bl.bat

REM Create rl.bat - reflog
echo @echo off > aliases\rl.bat
echo git reflog >> aliases\rl.bat
echo Generated: aliases\rl.bat

REM Create clean.bat - clean untracked files (usage: clean -f)
echo @echo off > aliases\clean.bat
echo git clean %%* >> aliases\clean.bat
echo Generated: aliases\clean.bat

REM Create ls.bat - short log (last 10 commits)
echo @echo off > aliases\ls.bat
echo git log --oneline -10 >> aliases\ls.bat
echo Generated: aliases\ls.bat

REM Create lp.bat - log with patches
echo @echo off > aliases\lp.bat
echo git log -p %%* >> aliases\lp.bat
echo Generated: aliases\lp.bat

REM Create df.bat - diff staged changes
echo @echo off > aliases\df.bat
echo git diff --staged >> aliases\df.bat
echo Generated: aliases\df.bat

REM Create amend.bat - amend last commit
echo @echo off > aliases\amend.bat
echo git commit --amend >> aliases\amend.bat
echo Generated: aliases\amend.bat

REM Create undo.bat - undo last commit (keep changes)
echo @echo off > aliases\undo.bat
echo git reset --soft HEAD~1 >> aliases\undo.bat
echo Generated: aliases\undo.bat

echo.
echo All git alias batch files have been created in the 'aliases' directory!
echo.
echo Total: 35 git command aliases generated for faster git operations!
echo.
echo Copy all .bat files from the 'aliases' directory to a directory in your PATH to use them as commands:
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
echo To install: Select all files in the 'aliases' folder and copy them to a directory in your PATH.
echo.
pause
