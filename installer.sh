#!/bin/bash

curl -o "$TMPDIR/dsuperuser" https://raw.githubusercontent.com/Roblox-Project-202X/DSuperUser/refs/heads/main/dsuperuser

curl -o "$TMPDIR/tsu-sudo" https://raw.githubusercontent.com/Roblox-Project-202X/DSuperUser/refs/heads/main/tsu-sudo

mkdir -p "$HOME/.dsuperuser/bin"

rm -rf "$HOME/.dsuperuser/bin/su"
rm -rf "$HOME/.dsuperuser/bin/tsu"
rm -rf "$HOME/.dsuperuser/bin/dsuperuser"
rm -rf "$HOME/.dsuperuser/bin/sudo"

install -Dm755 "$TMPDIR/dsuperuser" "$HOME/.dsuperuser/bin/dsuperuser"

install -Dm755 "$TMPDIR/tsu-sudo" "$HOME/.dsuperuser/bin/tsu"

ln -ds "$HOME/.dsuperuser/bin/dsuperuser" "$HOME/.dsuperuser/bin/su"

ln -ds "$HOME/.dsuperuser/bin/dsuperuser" "$HOME/.dsuperuser/bin/sudo"

export PATH="$HOME/.dsuperuser/bin:$PREFIX/bin:$PATH"

echo "export PATH=\"$HOME/.dsuperuser/bin:$PREFIX/bin:\$PATH\"" >> "$HOME/.bashrc"

# source "$HOME/.bashrc"

echo

dsuperuser sudo dsuperuser -v

echo
echo "Đã cài đặt thành công dsuperuser!"