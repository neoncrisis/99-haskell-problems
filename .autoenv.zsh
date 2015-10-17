CURRENT_DIR=$0:A:h
autostash PATH=$CURRENT_DIR/.cabal-sandbox/bin:$CURRENT_DIR/node_modules/less/bin/:$PATH

alias runhaskell="runhaskell -package-db=.cabal-sandbox/x86_64-linux-ghc-7.10.2-packages.conf.d"
