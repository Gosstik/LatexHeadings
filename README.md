# Latex in VSCode

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
