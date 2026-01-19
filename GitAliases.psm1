# Git Aliases PowerShell Module
# This module provides git command shortcuts as PowerShell functions
# Import this module in your PowerShell profile to use these aliases

# Remove conflicting built-in PowerShell aliases if they exist
# Note: We only remove 'gps' as it's the only PowerShell alias that conflicts with our functions
# (gps is built-in alias for Get-Process). Our functions automatically override external applications
# like 'df' and 'sh' due to PowerShell's command precedence (functions > cmdlets > external apps).
$conflictingAliases = @('gps')
foreach ($alias in $conflictingAliases) {
    Remove-Item "Alias:\$alias" -Force -ErrorAction SilentlyContinue
}

# Basic Operations
function st { git status @args }
function a { git add . @args }
function c { git commit -m @args }
function pl { git pull @args }
function gps { git push @args }
function f { git fetch @args }

# Branch Management
function br { git branch -a @args }
function co { git checkout @args }
function cb { git checkout -b @args }
function m { git merge @args }

# History & Inspection
function l { git log --oneline --graph --decorate @args }
function gls { git log --oneline -10 @args }
function lp { git log -p @args }
function sw { git show @args }
function bl { git blame @args }
function rl { git reflog @args }

# Diff & Changes
function d { git diff @args }
function df { git diff --staged @args }
function rs { git reset @args }
function amend { git commit --amend @args }
function undo { git reset --soft HEAD~1 @args }

# Stash Operations
function sh { git stash @args }
function pop { git stash pop @args }
function shl { git stash list @args }
function shd { git stash drop @args }
function shc { git stash clear @args }

# Rebase Operations
function rb { git rebase @args }
function rbc { git rebase --continue @args }
function rba { git rebase --abort @args }

# Advanced Operations
function gcp { git cherry-pick @args }
function clean { git clean @args }

# Repository Management
function cl { git clone @args }
function ig { git init @args }
function grm { git remote -v @args }
function tg { git tag @args }

# Export all functions
Export-ModuleMember -Function *