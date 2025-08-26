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

echo.
echo All git alias batch files have been created!
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
echo.
echo Usage examples:
echo   st                  (instead of git status)
echo   a                   (instead of git add .)
echo   c "my changes"      (instead of git commit -m "my changes")
echo   co main             (instead of git checkout main)
echo   pl                  (instead of git pull)
echo   ps                  (instead of git push)
echo.
pause
