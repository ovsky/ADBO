
# 📦 ADBO - Wrapper for Meta Quest ADB

![icon](https://i.ibb.co/qxxKhHZ/repo-icon.png)

---
**ADBO** - ADB wrapper for **Meta Quest ADB** that allows you to use you currently installed ADB and the modern, Quest-dedicated Meta ADB fork - which uses the streamed file management and is way faster and more usefull.

The **ADBO** and MQDB ADB - despite being made for Oculus Quest - can be used and speed-up operation on the most of Android Devices.


## 📖 Usage

To use it instead the standard ADB, simply, replace the `adb` by `adbo` in your command line, and pass the arguments that you want.


#### Example:
If you want to list connected devices, and install the selected APK on your Quest, type:

```bash
adbo devices
adbo install -r YourApp.apk
```

> Currently the wrapper was limited to be used on Windows platform. 
> There are plans to create a version for MacOS systems. 
> Unfortunately, there is no Linux version of MQDH available.

### 🛠️ Requirements:
- [Meta Quest Developer Hub](https://developer.oculus.com/downloads/package/oculus-developer-hub-win/): for the modern, fully featured ADB dedicated for Quest. 
You can also extract it and install the Meta ADB by yourself, without MQDH. 


## 🗂️ Releases:
Latest downloadable releases: 
https://github.com/ovsky/adbo/releases


## 📘 Install:
Simply run the latest `ADBO Installer` release as administrator, or put the data from `shell` inside a `C:\Windows\`, `C:\Windows\System32\` or any other main `Enviroment Path`.


## 📗 Build:

Compile the `ADBO/installer.cmd` script, with the `shell` folder: using GitHub Actions or custom tools that allows to make batch executables.


## 📚 Components:

Project components:
- `shell/`
	- `adbo.cmd`: simple, main script, that redirects the ADB commands to the MQDH ADB server.
	- `adbo.path`: file that defines the absolute path of the MQDH ADB. Initially, it's original path on the `C:/` drive, you are free to change it, if you are using the custom installation path.
- `installer/`
	- `installer.cmd`:  batch script that gets the admin privileges to access the `C:/` drive.
	-  `icon.ico`: simple `ico` to make the installer a bit cooler.
- `build/`
	- `ADBO Installer.exe`: the ADBO installer excebutable made using Tauri Bundler, Wix Tools, GitHub Actions or other tools that can be used to compile the batch scripts.


## 📝 License:

Copyright (c) 2023 - Przemysław Orłowski

License: ["THE SOFTWARE IS PROVIDED 'AS IS' (...)"]
also known as:
**[MIT License]**

License file: https://github.com/ovsky/adbo/blob/main/LICENSE.txt

