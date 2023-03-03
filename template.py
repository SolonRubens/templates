import argparse
import urllib.request
import os

class bcolors:
    # Set the color variables fg
    black='\033[0;30m'
    green='\033[0;32m'
    red='\033[0;31m'
    yellow='\033[0;33m'
    blue='\033[0;34m'
    magenta='\033[0;35m'
    cyan='\033[0;36m'
    # Set the color variables bg
    bg_red='\033[0;41m'
    bg_green='\033[0;42m'
    bg_yellow='\033[0;43m'
    bg_blue='\033[0;44m'
    bg_magenta='\033[0;45m'
    bg_cyan='\033[0;46m'
    # Clear the color after that
    clear='\033[0m'

def c(name):
    urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/src/template.c", name)

def cpp(name):
    urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/src/template.cpp", name)

def py(name):
    urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/src/template.py", name)

def xi(name, no_sources):
    if (no_sources != None):
        os.chdir("./sources")
        os.mkdir(f"{name}", 0o757)
        os.chdir(f"./{name}")
        urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/x/formats/index.js", "index.js")
        urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/x/formats/package.json", "package.json")
        urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/x/formats/.env", ".env")
        urllib.request.urlretrieve("https://raw.githubusercontent.com/SolonRubens/templates/main/x/formats/.npmrc", ".npmrc")
        os.system("npm i")
        os.chdir("../")
    
    os.chdir("./formats")
    os.mkdir(f"{name}", 0o757)
    os.chdir(f"./{name}")

def xe(name, no_sources):
    print(f"{bcolors.red}This is curently not supported and under construction{bcolors.clear} 👷🏽‍♂️")

def xie(name, no_sources):
    print(f"{bcolors.red}This is curently not supported and under construction{bcolors.clear} 👷🏽‍♂️")

templates = ["c", "cpp", "py", "express", "vue3", "xi"]

parser = argparse.ArgumentParser(description = f"{bcolors.cyan}TEMPLATE - Template generator (C) 2023 by Jonathan Silber{bcolors.clear}")

parser.add_argument("template", help="Which template you want to create")
parser.add_argument("name", help="Passes a name to your template i.e. for folders etc.")
parser.add_argument("--no-sources", action="store_true", help=f"If set {bcolors.red}no sources folder is created{bcolors.clear}")

args = parser.parse_args()

if args.template in templates:
    if args.template == "c":
        c(args.name)

    elif args.template == "xi":
        xi(args.name, args.no_sources)

    elif args.template == "xie":
        xie(args.name, args.no_sources)

    elif args.template == "xe":
        xe(args.name, args.no_sources)