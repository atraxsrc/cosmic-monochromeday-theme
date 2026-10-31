# Brave - Monochrome Day

A Chromium theme matching the COSMIC Monochrome Day rice, made from the Firefox theme's
colours. Brave, Chrome, Chromium and Edge all take it. No Chrome Web Store
and no Google account: it is loaded straight from this folder.

## Install

1. `brave://extensions` → turn on **Developer mode** (top right)
2. **Load unpacked** → pick `brave/theme`

It applies at once and survives restarts. Brave keeps reading the folder, so
leave the clone where it is; after editing `manifest.json`, press the reload
arrow on the theme's card.

To undo: `brave://settings/appearance` → Theme → **Reset to default**.

A theme replaces GTK / Classic mode in Appearance, and picking GTK or Classic
removes the theme.

### Packed instead

```bash
brave-browser --pack-extension="$PWD/brave/theme"
```

That writes `brave/theme.crx` and `brave/theme.pem` next to the folder (both
are git-ignored). On Linux you can drag the `.crx` onto `brave://extensions`.
The `.pem` is the signing key for later versions, keep it private. Windows and
macOS refuse `.crx` files from outside the store, so use Load unpacked there.

## Palette

Same roles as Noir's Brave theme: icons and inactive tabs take grey, the
active tab text takes dark grey. The Firefox theme keeps its inactive tabs
on ![#616161](https://placehold.co/12x12/616161/616161.png) `#616161` and its active tab on the text colour; Brave puts both accents on
the tabs, as Noir does.

| Hex       | Where in the theme                                 |
|-----------|----------------------------------------------------|
| ![#E6E6E6](https://placehold.co/12x12/E6E6E6/E6E6E6.png) `#E6E6E6` | Frame, inactive tabs, new tab page (incognito too) |
| ![#F1F1F1](https://placehold.co/12x12/f1f1f1/f1f1f1.png) `#F1F1F1` | Toolbar and active tab                             |
| ![#CFCFCF](https://placehold.co/12x12/cfcfcf/cfcfcf.png) `#CFCFCF` | Address bar                                        |
| ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151` | Bookmark bar text, address bar text, new tab text  |
| ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` | Toolbar icons, inactive tab text                   |
| ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` | Active tab text, new tab links                     |

Every text colour clears WCAG AA (4.5:1) on its background; the lowest is the
grey inactive tab text at 8.13:1.

Chromium themes take `[R, G, B]` lists, not hex, so `manifest.json` spells
the colours out as numbers.

## Notes

- **Colours only.** A Chromium theme has no keys for menus, the focus ring,
  the address bar dropdown or text selection; Chromium works those out from
  the frame and toolbar colours, so they stay on Brave's own dark colours.
  There is no `userChrome.css` equivalent.
- **Brave's own panels** (Shields, sidebar, wallet, settings) follow Brave's
  light mode, not the theme. Set `brave://settings/appearance` → Brave colors
  → **Light**.
- **Brave's new tab page** is Brave's own and may ignore `ntp_background`.
  Pick a background on the page itself: **Customize** → Background image.
- **Web pages** are not themed. That is `brave://flags/#enable-force-dark`
  or a Dark Reader style extension.
- Built against **Brave 1.98 (Chromium 155)**.

## License

MIT, same as the rest of the repo.
