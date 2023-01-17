@echo off

set param=%1

IF %param%=="c" (
    Xcopy /E /I "C:\Program Files\template\src\template.c" .
)

IF %param%=="cpp" (
    Xcopy /E /I "C:\Program Files\template\src\template.cpp" .
)

IF %param%=="py" (
    Xcopy /E /I "C:\Program Files\template\src\template.py" .
)

IF %param%=="node_express" (
    git clone --branch main --no-checkout https://github.com/SolonRubens/templates.git
    cd templates
    git sparse-checkout set node_express
    git checkout main
    cd ..
    Xcopy /E /I .\templates\src\node_express .\node_express
    rmdir .\templates
    cd node_express
    npm init
    npm i express
)

IF %param%=="vue3" (
    npm init vue@latest
    for /F "eol=| delims=" %%I in ('dir * /AD /B /O-D 2^>nul') do cd "%%I" & goto DoneCD
    echo No subdirectory found in : "%CD%"
    :DoneCD
    npm install
    npm run dev
)

IF %param%=="-h" (
    echo "---------------------------------------------------------"
    echo "TEMPLATE - Template generator (C) 2023 by Jonathan Silber"
    echo "---------------------------------------------------------"
    echo ""
    echo "Usage: template [format]"
    echo ""
    echo "Supported format values:"
    echo "  c"
    echo "  cpp"
    echo "  py"
    echo "  node_express"
    echo "  vue3"
)