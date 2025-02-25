# Termux Setup for Android 6 Marshmallow  

Alpine Linux enables unsupported Android devices to run the latest package versions, as Termux no longer supports Android 6. This guide explains how to set up Alpine Linux on Termux for Android 6 Marshmallow.

### Installing Alpine Linux
Run the following command in Termux to install Alpine Linux:  
```bash  
curl -LO https://raw.githubusercontent.com/jiroriyuma/termux-android-6/main/termux_setup.sh && bash termux_setup.sh 
```  

### Installing Essential Development Tools  
Once Alpine Linux is installed, run this command inside the Alpine shell to set up essential development tools:  
```bash  
wget -qO- "https://raw.githubusercontent.com/jiroriyuma/termux-android-6/main/termux_alpine_setup.sh" | bash  
```  

### Included Tools  
- **Nano**
- **VS Code Server** (I set up no password for this because I'm still having trouble setting up the SSH server)
- **SSH Server**
- **C and C++ Compilers** 
- **Python**
- **Node.js**
- **Java**  

### VS Code Remote SSH Setup  

1. Install the **Remote - SSH** extension in VS Code.  
2. Add the following SSH connection command:  
   ```  
   ssh -p 8022 root@<ip-address>  
   ```  
3. Select **Linux** as the platform.