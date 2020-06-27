#!/usr/bin/env bash
set -e

SCRIPT=$0
SRCDIR=$(cd "$(dirname "$0")" &>/dev/null && pwd)
LOCALTIME=$(date +%Y%m%d-%H%M%S-%s)

backup() {
    local path=$1
    echo "Back up: $path -> $path.$LOCALTIME.bak"
    mv "$path" "$path.$LOCALTIME.bak"
}

may_backup() {
    local path=$1
    if test -e "$path" && test ! -L "$path"; then
        backup "$path"
    else
        :
    fi
}

main() {
    local dstdir="${1:-$HOME}"
    local dstbindir="$dstdir/bin"

    local dotfiles=$(cd "$SRCDIR/dot" &>/dev/null && /bin/ls)
    local binfiles=$(cd "$SRCDIR/bin" &>/dev/null && /bin/ls)

     mkdir -p "$dstdir"
     mkdir -p "$dstbindir"

    for i in $dotfiles; do
        local src="$SRCDIR/dot/$i"
        local dst="$dstdir/.$i"
        may_backup "$dst"
        echo "Link: $src -> $dst"
        ln -nfs "$src" "$dst"
    done

    
    for i in $binfiles; do
        local src="$SRCDIR/bin/$i"
        local dst="$dstdir/bin/$i"
        may_backup "$dst"
        echo "Link: $src -> $dst"
        ln -nfs "$src" "$dst"
    done
}

main "$@"