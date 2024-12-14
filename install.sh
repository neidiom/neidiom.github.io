#!/bin/bash
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
mise cache clean
mise ls-remote ruby
mkdir ~/.tmp
export TMPDIR="$HOME/tmp"
mise i
