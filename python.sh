# Print out the config I used.
# cd "$MYGIT/deadsnakes/python3.8"; ./config.status --config

cd "$MYGIT/deadsnakes/python3.8"
./configure '--with-tcltk-includes=-I/usr/include -I/usr/include/tcl' '--with-tcltk-libs=-L/usr/lib -ltcl -ltk' '--enable-optimizations' --enable-shared

# Also add --enable-shared, so I can compile things such as weechat with the python3.8 library

# A full make clean is required after adding --enable-shared