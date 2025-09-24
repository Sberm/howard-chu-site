---
slug: Shared vim clipboard when using SSH
title: Shared vim clipboard when using SSH
authors: [howard]
tags: [linux]
date: 2023-09-17
---
1. For Windows, download MobaXterm or Xming; for Mac, download XQuartz as the X server. After downloading, open the application.
> Note that on Mac XQuartz works after I uncheck the `Enable Syncing`, and check it back again. [Link](https://stackoverflow.com/questions/47822357/how-to-use-x11-forwarding-to-copy-from-vim-to-local-machine)
> And tmux doesn't work well on Mac's default Terminal.app. For sharing clipboard you need to install [tmux-yank](https://github.com/tmux-plugins/tmux-yank) plugin
2. In the server's SSH configuration file located at `/etc/ssh/sshd_config`, enable `X11Forwarding yes`.
3. Based on personal experience, use the X server address provided in MobaXterm and set the Windows environment variable `$env:DISPLAY` to that address. This can be done in `Edit System Environment Variables`.
```powershell
# configure
PS C:\Users\Sberm> $env:DISPLAY="127.0.0.1:0.0"

# check
PS C:\Users\Sberm> echo $env:DISPLAY
127.0.0.1:0.0
```
<!-- truncate -->
4. Use ssh -Y \<user\>@\<address\> for X forwarding (or ssh -X \<user\>@\<address\>; my Windows computer cannot use this).
5. It is required to use a vim that supports X11. I'll use [Neovim](https://github.com/neovim/neovim) because it
   comes with everything, making the installation convenient. On CentOS, you
   can use gvim (on Ubuntu, it's called vim-gtk). They support X11
   clipboard functionality.
```bash
# centos
yum install vim-X11.x86_64

# ubuntu
sudo apt-get install vim-gtk
```

check if gvim supports X11(vim usually doesn't support by default)
```bash
> gvim --version | grep clipboard
+clipboard         +jumplist          +persistent_undo   +virtualedit
-ebcdic            +mouseshape        +statusline        +xterm_clipboard
```
The presence of a plus sign (`+`) before `xterm_clipboard` indicates support. Additionally, it must support the system clipboard (`+clipboard`). The `vim-enhanced` package installed via yum on my CentOS 8 system does not natively support clipboard functionality.

5. Also install `xclip` or `xsel` for X11 clipboard sharing.

6. Open the editor with gvim -v (or vimx). In gvim, use the following command to copy to the system clipboard. Enjoy!
```vimscript
" copy
%y+ " (visual) (if nothing gets selected, copy all the text)
"+y " (normal)
"*y " (normal)
:"+y " (visual)
:"*y " (visual)

" paste
<ctrl + r>+ (insert)
"+p " (normal)
"*p " (normal)
:"+p " (visual)
:"*p" (visual)
```
