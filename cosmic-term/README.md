# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Light** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (light) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Monochrome Day**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Monochrome Day. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays the accent grey ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C`.

The ANSI slots follow the rice: `red` is higher
![#424242](https://placehold.co/12x12/424242/424242.png) `#424242`; `green` is high
![#515151](https://placehold.co/12x12/515151/515151.png) `#515151`; `yellow` is the
accent grey ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C`;
`blue` is control ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png)
`#5C5C5C`; `magenta` is edge grey, the plain text colour
![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png) `#1A1A1A`; `cyan` is the
accent grey ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C`;
`white` is edge grey ![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png)
`#1A1A1A`. Directories are not affected: `LS_COLORS` in `zsh/monochromeday.zsh` colours
them in truecolor.

## Which one

Edge grey ![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png) `#1A1A1A` is the default. The others move through Monochrome Day's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Monochrome Day Mute | ![#616161](https://placehold.co/12x12/616161/616161.png) `#616161` | 5.0:1 | muted text, the dim text colour and every `dim` slot |
| Monochrome Day Control | ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` | 5.4:1 | the `blue` slot |
| Monochrome Day Accent | ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` | 5.4:1 | the accent, the cursor, the `yellow` and `cyan` slots |
| Monochrome Day High | ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151` | 6.4:1 | success, the `green` slot |
| Monochrome Day Higher | ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` | 8.1:1 | errors, the `red` slot and the bright text colour |
| **Monochrome Day** (default) | ![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png) `#1A1A1A` | 13.9:1 | the desktop text colour |
When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: the `blue` slot in Monochrome Day Control, for example, looks like plain text.
Errors and numbers stand out more against the dimmer schemes than against
edge grey.

**Bold:** `bright_foreground` (![#424242](https://placehold.co/12x12/424242/424242.png) `#424242`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the terminal background ![#E6E6E6](https://placehold.co/12x12/E6E6E6/E6E6E6.png) `#E6E6E6`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the wallpaper, so text looks a little softer and contrast a little lower.

## Light

**Monochrome Day** · `MonochromeDay-term.ron` · edge grey ![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png) `#1A1A1A`, 13.9:1. The default.

![Monochrome Day](../assets/cosmic-term/MonochromeDay-term.png)

**Monochrome Day Mute** · `MonochromeDay-term-mute.ron` · ![#616161](https://placehold.co/12x12/616161/616161.png) `#616161`, 5.0:1. Muted text, the dim text colour and every `dim` slot.

![Monochrome Day Mute](../assets/cosmic-term/MonochromeDay-term-mute.png)

**Monochrome Day Control** · `MonochromeDay-term-control.ron` · ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C`, 5.4:1. The `blue` slot.

![Monochrome Day Control](../assets/cosmic-term/MonochromeDay-term-control.png)

**Monochrome Day Accent** · `MonochromeDay-term-accent.ron` · ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C`, 5.4:1. The accent, the cursor, the `yellow` and `cyan` slots.

![Monochrome Day Accent](../assets/cosmic-term/MonochromeDay-term-accent.png)

**Monochrome Day High** · `MonochromeDay-term-high.ron` · ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151`, 6.4:1. Success, the `green` slot.

![Monochrome Day High](../assets/cosmic-term/MonochromeDay-term-high.png)

**Monochrome Day Higher** · `MonochromeDay-term-higher.ron` · ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242`, 8.1:1. Errors, the `red` slot and the bright text colour.

![Monochrome Day Higher](../assets/cosmic-term/MonochromeDay-term-higher.png)

Contrast is plain text on the theme background, WCAG 2.
