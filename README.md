#dotfiles

my settings for terminal related apps

#how

1. install zsh(guessing you have installed homebrew)

        brew install zsh

2. install z.sh via homebrew

        brew install z

3. install tmux via homebrew

        brew install tmux

4. install tmuxinator

        gem install tmuxinator

5. change login shell

        sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
        chsh -s /usr/local/bin/zsh

    if you are using Mac OS X,

    1. go to system preference -> accounts pane.

    2. unlock -> right click on your user name and choose Advanced Options in contextual menu.

    3. in the Advanced Options window, select `/usr/local/bin/zsh` (or type it!) in login shell input.

6. setup.sh

    run following command to create symlinks and setup git submodules

        sh setup.sh

7. install font

    install ./misc/SourceCodePro-Regular-Powerline.otf

    set SourceCodePro-Regular-Powerline.oth as terminal default font.

8. vim config

    in `/dotfiles`, do as follows.

        git submodule init
        git submodule update
        vim -c ':NeoBundleInstall!' -c ':q!' -c ':q!'

9. install powerline

```
brew install python
pip install psutil
pip install git+git://github.com/Lokaltog/powerline
```
