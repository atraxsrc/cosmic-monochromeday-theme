# Firefox - Monochrome Day

Firefox chrome matching the COSMIC Monochrome Day rice. Ported from the DarkGold
baseline (theme recipe and stylesheets), recoloured for pure greyscale.

## Palette

Stylesheets:

| Hex       | Role                      |
|-----------|---------------------------|
| ![#F1F1F1](https://placehold.co/12x12/f1f1f1/f1f1f1.png) `#F1F1F1` | Panels, menus             |
| ![#CBCBCB](https://placehold.co/12x12/CBCBCB/CBCBCB.png) `#CBCBCB` | Menu hover row (accent tinted into the panel) |
| ![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png) `#BDBDBD` | Menu pressed row          |
| ![#ABABAB](https://placehold.co/12x12/ABABAB/ABABAB.png) `#ABABAB` | Separators, menu border   |
| ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` | Accent, URL bar border, hover rail |
| ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151` | Menu text, button hover, new tab active (where DarkGold uses cream) |
| ![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png) `#1A1A1A` | New tab links (where DarkGold uses brass) |
| ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` | Hover text                |
| ![#E6E6E6](https://placehold.co/12x12/E6E6E6/E6E6E6.png) `#E6E6E6` | Text on the accent        |

## Structure

```
firefox/
├── theme/            WebExtension theme source (Cosmic Monochrome Day)
│   ├── manifest.json     DarkGold's 24 colour keys + URL bar ring and selection
│   └── icons/            32 / 48 / 64 / 96 / 128, cropped from monochromeday-reaper-skull
├── chrome/
│   ├── userChrome.css    browser UI: rounded corners, grey menu hover
│   └── userContent.css   new tab page: grey accents, blank shortcut tiles
└── install.sh            copies chrome/ into the default profile
```

Two layers, use one or both:

1. **Theme (colours):** [Cosmic Monochrome Day](https://addons.mozilla.org/en-US/firefox/addon/cosmic-monochromeday-theme/) colours the toolbar, tabs, URL bar,
   menus, sidebar and new tab page. This is the main look.
2. **Stylesheets (optional):** `chrome/` adds rounded corners, grey menu
   hover, grey accents and a blank new-tab grid on top of the theme. They
   also work with Firefox's built-in Light theme.

## Theme

Same colour keys and roles as DarkGold's Firefox theme. The palette has no hue,
so calm and loud are two levels of grey: icons take the calm accent
(![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C`, the rice's accent; gold in DarkGold), and everything "hot" (tab
line, pressed button, menu and sidebar selection, loading) takes the loud one
(![#424242](https://placehold.co/12x12/424242/424242.png) `#424242`, the palette's brightest accent slot; coral in DarkGold). The
stylesheets keep ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` for hover and focus, like DarkGold's keep gold.
One extra key, `toolbar_field_border_focus`, pins the focused URL bar ring to
![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` so it does not fall back to the desktop accent when
`widget.non-native-theme.use-theme-accent` is on (the Firefox default on
Linux). Two more, `toolbar_field_highlight` and `toolbar_field_highlight_text`,
colour selected text in the URL bar the same way, as DarkGold does. Every
text colour clears WCAG AA (4.5:1) on its background; icons and the tab
line clear 3:1.

| Hex       | Where in the theme                          |
|-----------|---------------------------------------------|
| ![#E6E6E6](https://placehold.co/12x12/E6E6E6/E6E6E6.png) `#E6E6E6` | Frame, new tab, text on dark selections   |
| ![#F1F1F1](https://placehold.co/12x12/f1f1f1/f1f1f1.png) `#F1F1F1` | Toolbar, menus                              |
| ![#CFCFCF](https://placehold.co/12x12/cfcfcf/cfcfcf.png) `#CFCFCF` | URL bar field, button hover, sidebar border |
| ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151` | Body text                                   |
| ![#616161](https://placehold.co/12x12/616161/616161.png) `#616161` | Inactive tab text, menu border              |
| ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` | Icons                                       |
| ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` | Focused URL bar ring and text selection, tab line, pressed button, menu and sidebar selection, loading, attention |

Build the package:

```bash
cd theme && zip -r -X ../cosmic-monochromeday.zip . -x '.*'
```

Try it without installing: `about:debugging#/runtime/this-firefox` → **Load
Temporary Add-on** → pick `theme/manifest.json`. It is gone on restart.

## Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files and restart, or run the Tokyo Night
`firefox/install.sh` to switch back.

## Notes

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables leak
  into the toolbar and blank the URL bar. They stay on the popup elements.
- **Context menus do not get an extra element border.** A second stroke made
  the right-click panel look detached. Hover is a lighter ![#CBCBCB](https://placehold.co/12x12/CBCBCB/CBCBCB.png) `#CBCBCB` row
  with a 3px ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` rail on the left, not a full ring.
- **Native menu styling is switched off** (`appearance: none`) on menus and
  menu rows. Without it the COSMIC/GTK hover paints over the colours above.
- **`[_moz-menuactive="true"]` is required.** Firefox marks the active
  context-menu row with that attribute, not only `:hover`.
- **`userContent.css` is colours plus one hide rule.** It sets accent / focus /
  link colours and hides shortcut artwork (`opacity: 0`) so the new-tab tiles
  stay blank. No size or position rules on the tiles.
- Built against **Firefox 154**.

## License

MIT, same as the rest of the repo.
