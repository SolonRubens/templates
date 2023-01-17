# Templates

Templates is a git repository with usefull template files for most some programming languages

## What is this for

In this repository I'm storing all my template files and folders for some programming languages
Currently supported are:
- C
- C++
- Python
- Node-Express
- Vue3

## Install

There are two ways to use this repository, if you are mostly working offline you should consider using Method 2 for anyone else Method 1 should be working fine.
If you're one of those weirdos how are still using Windows scroll down to Method 3 and 4.

If you don't want to scroll through the installation instructions, you can watch my YouTube instructions for
[Windows](https://youtube.com/)
[Unix-Based Distros](https://youtube.com/)
### Method 1 - You have consistent and permanent internet

#### Clone the necessary file

Only clone the template.sh file via wget to your /opt folder
```bash
wget https://raw.githubusercontent.com/SolonRubens/templates/main/template.sh
```

Then link it using
```bash
sudo ln -s /opt/template.sh /usr/local/bin/template
```
Or simply add the file to your PATH

If you chose the linking way you have to give yourself permission to execute the file
```bash
sudo chmod +x /usr/local/bin/template
```

### Method 2 - You almost never have internet or your connection is just bad

If you are mostly working offline or just have slow internet this is your way to go.

#### Clone the repository

Clone the repository via git to your /opt folder
```bash
git clone https://github.com/SolonRubens/templates.git
```

#### Link file

Link the offline template file with the following command
```bash
sudo ln -s /opt/templates/template_offline.sh /usr/local/bin/template
```

In case you already linked to the "normal" template file use this command
```bash
sudo ln -s /opt/templates/template_offline.sh /usr/local/bin/template_offline
```

Either way you have to change permissions for the generated linking file
```bash
sudo chmod +x /usr/local/bin/template
```
or
```bash
sudo chmod +x /usr/local/bin/template_offline
```

### Method 3 - Online Version for Windows

#### Install wget

Unfortunately Windows has no tool preinstalled for downloading files via the command line so we have to install [wget](https://gnuwin32.sourceforge.net/packages/wget.htm) first.

If, by whatever reason, you don't want to install [wget](https://gnuwin32.sourceforge.net/packages/wget.htm) you have to use the local version. Windows sucks, I'm sorry.

**Don't forget to add wget to your PATH if it doesn't happen automatically**

#### Download the necessary file

Now you can use wget to download the template.bat file
```bash
wget https://raw.githubusercontent.com/SolonRubens/templates/main/template.bat 
```

Wherever you download it to remember to add the folder afterwards to your PATH variable.

### Method 4 - Local Version for Windows