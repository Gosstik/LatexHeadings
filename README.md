# Latex in VSCode

## Heading

### Installation

1) Скачиваем `MikTex` [по этой инструкции](https://miktex.org/download).

2) (Windows only) устанавливаем `Strawberry Perl`.

3) Устанавливаем [расширения](#extensions) в `VScode`.

```bash
sudo apt-get install miktex
```

### Extensions

- [Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

- [LaTeX Snippets extension](https://marketplace.visualstudio.com/items?itemName=JeffersonQin.latex-snippets-jeff) --- use `LaTeX Plotting Tool` in palette.

- [Paste image](https://marketplace.visualstudio.com/items?itemName=mushan.vscode-paste-image).

- [Rewrap](https://marketplace.visualstudio.com/items?itemName=stkb.rewrap).

DO NOT install following extension:

- [Latex](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-latex).

- [LaTeX language support](https://marketplace.visualstudio.com/items?itemName=torn4dom4n.latex-support).

### Shortcuts

- `ctrl+alt+j` --- SyncTex: find place in pdf viewer by word in sources.
- `ctrl+click` --- jump from pdf to code.
- (`alt+a` and `alt+q`) or (`select text` and `alt+q`) --- rewrap comments

### Man

Create `Custom.tex` to input specific latex features for current project.


## Template project

### Setup new project

```bash
mkdir <Project>
cd <Project>

# Create github repo for <Project>
git init
git commit --allow-empty -m "empty initial commit"
git remote add origin <repo>

git remote add template git@github.com:Gosstik/LatexTemplate.git
git remote set-url --push template DISABLE
git fetch template
git rebase template/master
git submodule update --init --remote --recursive --rebase
cd Headings && git checkout master && cd ..

# git config push.recurseSubmodules check
# git commit -am "feat: git config push.recurseSubmodules check"

git push -u origin master
```


### Pull changes

```bash
# Option 1 (auto, prefer option 2)
git pull --recurse-submodules

# Option 2 (after git pull)
git submodule update --init --remote --recursive --rebase
```


### Update submodules

```bash
# Option 1 (auto)
# --merge - merge current changes
# --rebase - ...
git submodule update --remote --rebase Headings

# Option 2 (manual)
cd Headings
git fetch
git rebase origin/master
```


### Publish submodule changes

```bash
### One-shot
./Headings/Scripts/Publish.sh

### Manual
# Commit changes in Heading
cd Headings
git add -A
git commit -m "feat: updates"
git push
cd ..

# Add new commits from submodule
git add Headings
git commit -m "update Headings"

# Option 1 (push with submodules)
git push --recurse-submodules=on-demand

# Option 2 (check that submodules are pushed)
git push --recurse-submodules=check
```


### Set specific branch to track

```bash
git config -f .gitmodules submodule.Headings.branch master
git config status.submodulesummary 1
```
