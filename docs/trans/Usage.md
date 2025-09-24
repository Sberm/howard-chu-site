---
sidebar_position: 2
---

### Basic Usage

| keys                             | function                                                            |
| :---:                            | :---:                                                               |
| hjkl(vim bindings) or arrow keys | scroll/enter/exit a directory                                       |
| o or \<ENTER\>                   | go to directory/open file under cursor                              |
| i                                | go to the current directory (in the left window)                    |
| q                                | quit                                                                |
| /                                | search                                                              |
| ?                                | reverse search                                                      |
| n / N                            | jump to the next/previous search match                              |
| Ctrl + U / Ctrl + D              | half pageup/pagedown                                                |
| (when in search mode) arrow keys | up/down for search history, left/right for editing the search query |

To open up a directory with trans
```bash
ts /usr/lib/
ts ..
ts /root
```

### Searching

Press foward slash `/` to search, or question mark `?` to reverse search.

Searching is case-insensitive by default, use `<search term>\C` to search
case-sensitively. e.g. `README\C` will match `README.md`, but not `readme.md`.

`Transgender.rs` supports **regular expression**.

`Trangender.rs` performs a search whenever a key is pressed in search mode.
