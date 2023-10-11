### Cria diretório e monta partição automaticamente
sudo mkdir /mnt/games
sudo nano /etc/fstab
#No final do arquivo, adicione a linha: UUID=f4525d07-661d-4c65-92b5-4dfaddf54c51 /mnt/games     ext4    defaults                   0 0

### Instala o Steam
sudo pacman -Syu steam

### Instala o Wine-Staging
sudo pacman -Syu wine-staging

### Instala o driver Vulkan de código aberto AMDVLK (opcional)
sudo pacman -Syu amdvlk lib32-amdvlk

### Instala os utilitários Gamemode e MangoHud
sudo pacman -Syu gamemode lib32-gamemode mangohud

### Instala o Discord do Flathub
flatpak install flathub com.discordapp.Discord

### Instala o Protontricks do Flathub e concede acesso à outra unidade de disco
flatpak install flathub com.github.Matoking.protontricks
flatpak override --user --filesystem=/mnt/games/SteamLibrary com.github.Matoking.protontricks

### Fim do script
