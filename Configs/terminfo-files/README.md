# Italics in Vim - the .terminfo file

This is all about getting _ITALICS_ to work in vim (which is surprisingly hard and oh so satsifying now that they do 🤓.  
In order to get them working, I followed [this setup](https://apple.stackexchange.com/questions/266333/how-to-show-italic-in-vim-in-iterm2), which is explained in [this video](https://youtu.be/n1cKtZfwOgQ), and curled [these files](https://github.com/wincent/wincent/tree/master/aspects/terminfo/files) to make it happen.

For this specific setup I ran these 3 scripts:  
`tic -o ~/.terminfo Configs/terminfo-files/tmux-256color.terminfo`  
`tic -o ~/.terminfo Configs/terminfo-files/tmux.terminfo`  
`tic -o ~/.terminfo Configs/terminfo-files/xterm-256color.terminfo`  

To ensure that everything is working properly, run this script:
```
echo `tput sitm`italics`tput ritm` `tput smso`standout`tput rmso`
```
