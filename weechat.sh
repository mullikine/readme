# For weechat
agi guile-2.0 guile-2.0-dev
agi libphp7.0-embed
agi libaspell-dev
agi libphp-embed

cd "$MYGIT/deadsnakes/python3.8"
./configure '--with-tcltk-includes=-I/usr/include -I/usr/include/tcl' '--with-tcltk-libs=-L/usr/lib -ltcl -ltk' '--enable-optimizations' --enable-shared
# Also add --enable-shared, so I can compile things such as weechat with the python3.8 library


cd $MYGIT/weechat/weechat
./autogen.sh
./configure --prefix=$HOME/local
make -j 8 && make install


cd "$MYGIT/poljar/weechat-matrix-rs"; make install