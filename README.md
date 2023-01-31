
## 📦 ADBO - Wrapper for Meta Quest ADB

![icon](https://i.ibb.co/86Z6ggX/repo-icon.png)
---
ADBO - ADB wrapper for Meta Quest ADB that allows you to use you currently installed ADB and the modern, Quest-dedicated Meta ADB fork - which uses the streamed file management and is way faster and more usefull. 

### 📖 Usage
To use it instead the standard ADB, simply, replace the `adb` by `adbo` in your command line, and pass the arguments that you want.

For example:
If you want to list connected devices, and install the selected APK on your Quest, type:
```batch
adbo devices
adbo install -r YourApp.apk
```


### 🛠️ Requirements:
- [Meta Quest Developer Hub](https://developer.oculus.com/downloads/package/oculus-developer-hub-win/): for the modern, fully featured ADB dedicated for Quest. 
You can also extract it and install the Meta ADB by yourself, without MQDH. 


### 🗂️ Releases:
Latest downloadable releases: 
https://github.com/ovsky/adbo/releases

### 📘 Install:
Simply run the latest `ADBO Installer` release as administrator, or put the data from `shell` inside a `C:\Windows\`, `C:\Windows\System32\` or any other main `enviroment path`.

### 📗 Build:

Compile the `ADBO/installer.cmd` script, with the `shell` folder: using GitHub Actions or custom tools that allows to make batch executables.

### 📚 Components:
Project components:
- `shell/`
	- `adbo.cmd`: simple, main script, that redirects the ADB commands to the MQDH ADB server.
	- `adbo.path`: file that defines the absolute path of the MQDH ADB. Initially, it's original path on the `C:/` drive, you are free to change it, if you are using the custom installation path.
- `installer/`
	- `installer.cmd`:  batch script that gets the admin privileges to access the `C:/` drive.
	-  `icon.ico`: simple `ico` to make the installer a bit cooler.
- build/
	- `ADBO Installer.exe`: the ADBO installer excebutable made using Tauri Bundler, Wix Tools, GitHub Actions or other tools that can be used to compile the batch scripts.

### 📝 License:

Copyright (c) 2023 - Przemysław Orłowski
("THE SOFTWARE IS PROVIDED "'AS IS'" (...))
also known as:
**MIT License** 
License file: https://github.com/ovsky/adbo/blob/main/LICENSE.txt

---