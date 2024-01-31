curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org > /tmp/ghcup.sh
export BOOTSTRAP_HASKELL_NONINTERACTIVE=1
bash /tmp/ghcup.sh 
export PATH="$HOME/.ghcup/bin:$PATH"
ghcup install cabal --set latest
ghcup install ghc --set latest
ghcup install stack --set latest
ghcup install hls --set latest
