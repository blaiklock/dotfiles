# SETUP

1. Clone repository to your home directory.
2. Install Vundle
    - In Ubuntu

        `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
    - In Windows

        `git clone https://github.com/gmarik/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim`
3. Create a soft symbolic link
    - In Ubuntu run

        `ln -s ~/dotfiles/_vimrc ~/.vimrc`
    - In Windows run
    
        `mklink _vimrc dotfiles\_vimrc`
4. Install powerline fonts

    ```
    git clone https://github.com/powerline/fonts.git
    cd fonts
    ./install.sh
    ```
5. For Mac, change Terminal.app font to the same font being used by airline.
6. Add `export TERM=xterm-256color` to `.zshrc`
7. Open vim and run
    `:PluginInstall`
8. Happy vimming!
