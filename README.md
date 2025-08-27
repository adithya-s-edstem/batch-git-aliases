# batch-git-aliases

> **🤖 Copilot-Managed Repository**: This repository is fully managed by GitHub Copilot as a testing ground for AI-powered development workflows. All code, commits, pull requests, CI pipelines, and documentation are generated and maintained by Copilot to demonstrate autonomous development capabilities. See [PR #1](../../pull/1) as a sample of Copilot's autonomous development process.

## Related Projects

See [bash-things](https://github.com/adithya-s-edstem/bash-things) for a human coded version for bash.

A comprehensive collection of Windows batch file shortcuts for common Git commands. This script generates 35 tiny batch files that serve as quick aliases for Git operations.

**All generated `.bat` files are organized in a dedicated `aliases/` directory for easy selection and copying.**

## Quick Start

1. Run `generate.bat` to create all alias files in the `aliases/` directory
2. Copy all `.bat` files from the `aliases/` folder to a directory in your PATH
3. Use short commands instead of full git commands (e.g., `st` instead of `git status`)

## Commands

### 🔄 **Basic Operations**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `st` | `git status` | Show working directory status |
| `a` | `git add .` | Add all changes to staging |
| `c "message"` | `git commit -m "message"` | Commit with message |
| `pl` | `git pull` | Pull from current branch |
| `ps` | `git push` | Push to current branch |
| `f` | `git fetch` | Fetch from remote |

### 🌿 **Branch Management**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `br` | `git branch -a` | Show all branches |
| `co branch-name` | `git checkout branch-name` | Switch to branch |
| `cb new-branch` | `git checkout -b new-branch` | Create and switch to new branch |
| `m branch-name` | `git merge branch-name` | Merge branch |

### 📜 **History & Inspection**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `l` | `git log --oneline --graph --decorate` | Pretty log with graph |
| `ls` | `git log --oneline -10` | Short log (last 10 commits) |
| `lp` | `git log -p` | Log with patches |
| `sw commit-hash` | `git show commit-hash` | Show specific commit |
| `bl filename` | `git blame filename` | Show file blame |
| `rl` | `git reflog` | Show reflog |

### 🔧 **Diff & Changes**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `d` | `git diff` | Show unstaged changes |
| `df` | `git diff --staged` | Show staged changes |
| `rs` | `git reset` | Reset changes (with parameters) |
| `amend` | `git commit --amend` | Amend last commit |
| `undo` | `git reset --soft HEAD~1` | Undo last commit (keep changes) |

### 📦 **Stash Operations**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `sh` | `git stash` | Stash current changes |
| `pop` | `git stash pop` | Apply and remove latest stash |
| `shl` | `git stash list` | List all stashes |
| `shd stash@{0}` | `git stash drop stash@{0}` | Drop specific stash |
| `shc` | `git stash clear` | Clear all stashes |

### 🔄 **Rebase Operations**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `rb branch-name` | `git rebase branch-name` | Rebase onto branch |
| `rb -i HEAD~3` | `git rebase -i HEAD~3` | Interactive rebase |
| `rbc` | `git rebase --continue` | Continue rebase |
| `rba` | `git rebase --abort` | Abort rebase |

### 🍒 **Advanced Operations**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `cp commit-hash` | `git cherry-pick commit-hash` | Cherry-pick commit |
| `clean -f` | `git clean -f` | Clean untracked files |

### 🏗️ **Repository Management**
| Alias | Git Command | Description |
|-------|-------------|-------------|
| `cl repo-url` | `git clone repo-url` | Clone repository |
| `ig` | `git init` | Initialize git repository |
| `rm` | `git remote -v` | Show remote repositories |
| `tg` | `git tag` | List tags |

## Usage Examples

### Basic Workflow
```bash
st                    # Check status
a                     # Stage all changes
c "Add new feature"   # Commit with message
ps                    # Push changes
```

### Branch Operations
```bash
br                    # List branches
cb feature-branch     # Create and switch to new branch
co main               # Switch back to main
m feature-branch      # Merge feature branch
```

### Stash Management
```bash
sh                    # Stash current changes
shl                   # List stashes
pop                   # Apply latest stash
shd stash@{1}         # Drop specific stash
shc                   # Clear all stashes
```

### Advanced Workflows
```bash
rb -i HEAD~3          # Interactive rebase last 3 commits
rbc                   # Continue after resolving conflicts
cp abc123             # Cherry-pick specific commit
sw abc123             # Show commit details
amend                 # Amend last commit
undo                  # Undo last commit (keep changes)
```

### History & Inspection
```bash
l                     # Pretty log with graph
ls                    # Quick log (last 10)
rl                    # Show reflog
bl file.txt           # Blame specific file
df                    # Show staged changes
```

## Installation

1. **Generate the aliases**: Run `generate.bat` from the repository directory
2. **Locate the files**: All 35 `.bat` files will be created in the `aliases/` folder
3. **Install the aliases**: Select all files from the `aliases/` folder and copy them to a directory in your PATH (e.g., `C:\Windows\System32` or a custom PATH directory)
4. **Start using**: Open a new command prompt and use the short aliases like `st` instead of `git status`
