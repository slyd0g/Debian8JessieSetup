# Debian8JessieSetup
Run on a fresh install of Debian 8 Jessie to create a new user, give sudo privileges, update your system, update your source list and more! 

For the Wi-Fi drivers I used the following because my computers used them (in the future I will add more support for other cards):
  - <a href="https://wiki.debian.org/iwlwifi"> iwlwifi (Intel network cards)</a>
  - <a href= "https://packages.debian.org/jessie/kernel/firmware-b43-installer">firmware-b43-installer (Broadcom 43xx network cards)</a>
  
# Install
1. Become a super user with: su (you will be prompt for the root password you set during installation)
2. Download "git" with: apt-get install git
3. Clone the repository: sudo git clone https://github.com/justinbui/Debian8JessieSetup
4. Make the file an executable: chmod u+x mainscript.sh
5. Run the executable with: ./mainscript.sh
