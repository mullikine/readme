# Compiling emacs 25

# {
#     cd $HOME/source/git/emacs-mirror/emacs
#
#     ./configure -with-all --without-makeinfo --prefix=$HOME/local/emacs26
#
#     ./configure -with-all --with-xwidgets --without-makeinfo --prefix=$HOME/local/emacs26
#
#     agi libjpeg-dev
#     agi libgif-dev
#     agi libtiff5-dev
#
#     make -j10
#
#     make install
# }

# Release candidate 1
# rc1
#     It is a pre-release candidate.
#
#     If I check out emacs-26.1-rc1, that would
#     be older than emacs-26.1.
#         $MYGIT/emacs-mirror/emacs26


# Compiling emacs 26
# With webkit -- but it's not that great
# With modules -- so I can use libvterm with emacs

{
    cd $MYGIT/emacs-mirror/emacs26

    ./autogen.sh
    ./configure -with-all --with-xwidgets --without-makeinfo --with-modules --prefix=$HOME/local/emacs26

    # imagemagick support (resizing images)
    agi libmagickcore-dev libmagick++-dev

    # Tktiet 18
    agi libgnutls30 libgnutls28-dev
    agi libpng
    agi libpng-dev

    agi libwebkit2gtk-4.0-dev

    agi libjpeg-dev
    agi libgif-dev
    agi libtiff5-dev libtiff5

    make -j10

    make install
}

# If I have problems building emacs then clone again
# This is because there are hidden files going from 27 to 26 which are
# not cleared by git clean

# emacs 27
{
    cd $MYGIT/emacs-mirror/emacs26
    ./autogen.sh
    # Can't compile with --xwidgets on ubuntu16
    ./configure -with-all --without-makeinfo --with-modules --prefix=$HOME/local/emacs27 --with-mailutils --with-json
}