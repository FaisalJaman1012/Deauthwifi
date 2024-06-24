# DeauthWiFi

## This Bash script installs the deauthwifi tool on a Linux system. It sets up the necessary files and creates a desktop entry for easy access.

## Table of Contents:
    1.Requirements
    2.Installation
    3.Usage
    4.Disclaimer

## Requirements:
    Linux operating system
    Root (sudo) privileges
    
## Installation
To install the deauthwifi tool, follow these steps:

    1.Clone the repository:
    
    git clone https://github.com/Faisaljaman1012/deauthwifi.git
    cd deauthwifi

    2.Make the install script executable:

    sudo chmod +x install.sh

    3.Run the install script with sudo:

    sudo ./install.sh

## Usage:
1.After installation, you can run the deauthwifi tool using the following command:
               
    sudo deauthwifi
    sudo ./deauthwifi.sh

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/2757c333-fe9b-4e9d-acbc-795e0ff46f09" alt="Step 3">
  </div>

2.Discover nearby Wi-Fi networks and view their details.

    1 (choice)
<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/b46955b7-c6df-4e9a-bc4e-be802670c588" alt="Step 3">
  </div>
  
3.Now select 4 to choose your network interface:

       4 (choice)
<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/0b66b018-d307-45dd-8a2c-87606e6c64f1" alt="Step 3">
  </div>

  4.Choose a specific Wi-Fi network for additional actions. Notedown your target networks BSSID and Channel Number

       BSSID: (target)
       CH: (target)
  <div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/4358179a-4f22-4ada-86e4-6fa228f83704" alt="Step 3">
  </div>

  5.open the tool in a another terminal and choose 2 then provide your target networks BSSID and channel no and also select your network interface:

      2 (choice)
      BSSID: (target)
      CH: (target)
      4 (network interface)
 <div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/945c5e11-4c38-482f-94b7-468705ef0d52" alt="Step 3">
  </div>

  6.For deauthenticate a single client keep note for your target networks BSSID and target mac address:

      BSSID: (target)
      MAC ADDRESS: (target)

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/51b1bc6f-8e67-4b3d-a7d6-8c78559d3385" alt="Step 3">
  </div>

 
  7.For deauthenticate a single client choose 3 and then provide the note down things:

      3 (choice)
      100 (number of packets)
      BSSID: (target)
      MAC ADDRESS: (target)
      4 (network interface)
<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/087835df-76dd-47bd-aab2-1d787cf8d0d8" alt="Step 3">
  </div>


  8.For deauthenticate all client chosse 4 and then provide the note down things:

      4 (choice)
      100 (number of packets)
      BSSID: (target)
      MAC ADDRESS: (target)
      4 (network interface)

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/debdb88d-0703-4f3f-854c-b44d342ba078" alt="Step 3">
  </div>


  9. Congratulations! You have successfully done the Deauthentication on the target

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/Deauthwifi/assets/91938237/46d12e19-b2d5-4bf2-ad3b-858d497a7fb6" alt="Step 3">
  </div>


## Disclaimer

This tool is provided for educational purposes only. It should not be used for illegal activities. Only use it for legitimate penetration testing and security research purposes on network devices that you own or have permission to test. By using this tool, you agree that you will not engage in any unauthorized or illegal activities with it. You understand that the misuse of this tool may violate laws and regulations and can lead to severe legal consequences, including criminal charges and penalties.









