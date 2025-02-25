# Termux Setup for Android 6 Marshmallow  

This guide explains how to set up **Alpine Linux** on **Termux** for Android 6 Marshmallow.  

### Installing Alpine Linux  
Run the following command in Termux to install Alpine Linux:  
```bash  
curl -sL https://raw.githubusercontent.com/jiroriyuma/termux-android-6/main/termux_setup.sh | bash  
```  

### Installing Essential Development Tools  
Once Alpine Linux is installed, run this command inside the Alpine shell to set up essential development tools:  
```bash  
wget -qO- "https://raw.githubusercontent.com/jiroriyuma/termux-android-6/main/termux_alpine_setup.sh" | bash  
```  

### Included Tools  
The script will automatically install the following:  
- **Nano** – Text Editor
- **VS Code Server** – Remote development  
- **SSH Server** – Secure remote access  
- **C and C++ Compilers** – For building applications  
- **Python** – Scripting and development  
- **Node.js** – JavaScript runtime  
- **Java** – For running Java applications  
