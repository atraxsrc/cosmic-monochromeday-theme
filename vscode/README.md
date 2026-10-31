# Cosmic Monochrome Day for Cursor

A colour theme for [Cursor](https://cursor.com) from the COSMIC
[Monochrome Day](https://github.com/atraxsrc/cosmic-monochromeday-theme) rice. It is a plain VS Code theme extension,
so VS Code and VSCodium take it too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-monochromeday-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Monochrome Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Monochrome Day |
|------|------------|
| Keywords, tags | ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` |
| Functions, tag attributes | ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151` |
| Strings | ![#5C5C5C](https://placehold.co/12x12/5C5C5C/5C5C5C.png) `#5C5C5C` |
| Numbers, constants | ![#1A1A1A](https://placehold.co/12x12/1A1A1A/1A1A1A.png) `#1A1A1A` |
| Types, classes, modules | ![#5C5C5C](https://placehold.co/12x12/5C5C5C/5C5C5C.png) `#5C5C5C` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` |
| Parameters (italic) | ![#5C5C5C](https://placehold.co/12x12/5C5C5C/5C5C5C.png) `#5C5C5C` |
| Operators, punctuation | ![#616161](https://placehold.co/12x12/616161/616161.png) `#616161` |
| Comments (italic) | ![#818181](https://placehold.co/12x12/818181/818181.png) `#818181` |
| Accent | ![#5C5C5C](https://placehold.co/12x12/5C5C5C/5C5C5C.png) `#5C5C5C` |

The workbench takes the window colour of the rice's `cosmic/*.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the accent for the active
tab line, buttons, badges and the menu highlight. The integrated terminal uses
the rice's COSMIC Terminal scheme (`cosmic-term/`), so command output looks the
same as in COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, checked with a script over the text
and background pairs the theme sets.

On the highlighted current line, code can dip slightly under 4.5:1 and
comments under 3:1.
