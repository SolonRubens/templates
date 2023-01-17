# Templates

Templates is a git repository with usefull template files for most common programming languages

## What is this for

In this repository I'm storing all my template files and folders for common programming languages
Currently supported are:
- C
- C++
- Python

## Install

There are two ways to use this repository, if you are mostly working offline you should consider using Method 2 for anyone else Method 1 should be working fine.

### Method 1 - You have consistent and permanent internet

#### Clone necessary file

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