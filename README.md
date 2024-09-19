# vagrant-base

## Vagrantfile

VM **Ubuntu 24.04** usando provider **VirtualBox** e uma synced folder na `/share`

## provision

- Sempre atualizar lista de pacotes com o `apt` ao iniciar a VM
- Aliases de comandos frequentemente usados ([dotfiles](https://github.com/Gawarez/dotfiles))
- Script de instalação do Docker + colocar user no grupo
- Script que instala o [fzf](https://github.com/junegunn/fzf), `ranger` e `ncdu`