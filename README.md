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
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/925f1a2e-2e89-4f90-8f33-456b7215edff" alt="Step 3">
  </div>

2.Discover nearby Wi-Fi networks and view their details.

    1 (choice)
<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/2d0c6397-3490-4785-945e-a3bb65767a2a" alt="Step 3">
  </div>
  
3.Now select 4 to choose your network interface:

       4 (choice)
<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/58c111ff-de7d-4942-91e8-56fa7c5ea6f0" alt="Step 3">
  </div>

  4.Choose a specific Wi-Fi network for additional actions. Notedown your target networks BSSID and Channel Number

       BSSID: (target)
       CH: (target)
  <div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/270a70c7-c5f5-45b6-b7f6-08f2a091bfbd" alt="Step 3">
  </div>

  5.open the tool in a another terminal and choose 2 then provide your target networks BSSID and channel no and also select your network interface:

      2 (choice)
      BSSID: (target)
      CH: (target)
      4 (network interface)
 <div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/86a30694-1c4f-4df3-9292-37b78c118521" alt="Step 3">
  </div>

  6.For deauthenticate a single client keep note for your target networks BSSID and target mac address:

      BSSID: (target)
      MAC ADDRESS: (target)

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/fb981d60-0157-44d6-b389-2b51f1089c8d" alt="Step 3">
  </div>

 
  7.For deauthenticate a single client choose 3 and then provide the note down things:

      3 (choice)
      100 (number of packets)
      BSSID: (target)
      MAC ADDRESS: (target)
      4 (network interface)
<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/49bb2d49-8ed9-470a-a4c6-a7ec6ee0f8d2" alt="Step 3">
  </div>


  8.For deauthenticate all client chosse 4 and then provide the note down things:

      4 (choice)
      100 (number of packets)
      BSSID: (target)
      MAC ADDRESS: (target)
      4 (network interface)

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/c23f460c-3b9c-4f7f-973e-ebe3efc58d6e" alt="Step 3">
  </div>


  9. Congratulations! You have successfully done the Deauthentication on the target

<div style="text-align:center">
    <img src="https://github.com/FaisalJaman1012/deauthwifi/assets/91938237/006f8931-a7ea-4c16-9b4a-e4cb45af6f65" alt="Step 3">
  </div>


## Disclaimer

This tool is provided for educational purposes only. It should not be used for illegal activities. Only use it for legitimate penetration testing and security research purposes on network devices that you own or have permission to test. By using this tool, you agree that you will not engage in any unauthorized or illegal activities with it. You understand that the misuse of this tool may violate laws and regulations and can lead to severe legal consequences, including criminal charges and penalties.
