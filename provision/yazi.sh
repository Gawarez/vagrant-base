#!/bin/bash

# Download and move yazi release to /usr/local
curl -L -O https://github.com/sxyazi/yazi/releases/download/v0.4.1/yazi-x86_64-unknown-linux-gnu.zip
unzip -q yazi-x86_64-unknown-linux-gnu.zip
mv yazi-x86_64-unknown-linux-gnu yazi
sudo mv yazi /usr/local/yazi
sudo ln -s /usr/local/yazi/yazi /usr/local/bin/yazi
sudo rm yazi-x86_64-unknown-linux-gnu.zip

# Shell wrapper
cat >> ~/.bashrc << END

function y() {
  local tmp="\$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "\$@" --cwd-file="\$tmp"
  if cwd="$(command cat -- "\$tmp")" && [ -n "\$cwd" ] && [ "\$cwd" != "\$PWD" ]; then
    builtin cd -- "\$cwd"
  fi
  rm -f -- "\$tmp"
}
END