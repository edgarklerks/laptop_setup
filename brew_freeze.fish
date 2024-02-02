echo -n "casks: ["; brew list --cask | tr -d '  ' | string join ','; echo "]"
echo -n "formulae: ["; brew list --formulae | tr -d ' ' | string join ',' | string trim -r -c \n; echo "]"
