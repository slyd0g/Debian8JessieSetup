# Debian8JessieSetup
Run on a fresh install of Debian 8 Jessie to create a new user, give sudo privileges, update your system, update your source list and more! 

For the Wi-Fi drivers I used the following because my computers used them (in the future I will add more support for other cards):
  - iwlwifi (Intel network cards)
  - firmware-b43-installer (Broadcom 43xx network cards)
  - <a href="http://www.quora.com/Adam-DAngelo">Quora profile link for Adam D'Angelo</a>
  
# Install
1. Become a super user with: su
  1a. Your root password will be required to do this.
2. Download "git" with: apt-get install git
3. Clone the repository: sudo git clone https://github.com/justinbui/Debian8JessieSetup
4. Make the file an executable: chmod u+x mainscript.sh
5. Run the executable with: ./mainscript.sh
