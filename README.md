# Install
- Install neovim
https://github.com/neovim/neovim/blob/master/INSTALL.md

- First install lua language server
windows: scoop install lua-language-server
linux: brew install lua-language-server

- Install go
donwnload from https://go.dev/dl/
Windows: run msi
linux:
```bash
 rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz
 echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
 source ~/.zshrc
 ```

- Install gopls
```bash
go install golang.org/x/tools/gopls@latest
```

- Install rust
download rustup and install

- Install rust-analyzer
```bash
rustup +nightly component add rust-analyzer-preview
```

- Install ctags

windows: https://github.com/universal-ctags/ctags-win32/releases
linux: https://github.com/universal-ctags/ctags-nightly-build/releases

add ctags to path

# Setup
run 
:Copilot setup
:MasonInstallAll
:Lazy! sync
