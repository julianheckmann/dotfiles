#!/usr/bin/env bash

current_dir=$(dirname "${BASH_SOURCE[0]:-$0}")
cd "$current_idr"

destination_dir="$HOME/.config/$(basename "$(realpath "$current_dir")")"
sources=$(command find . -mindepth 1 -type f | command grep -v "$(basename "$0")")

for src in $sources; do
  full_path=$(readlink -f "$src")
  
  if [[ ! -e $(dirname "$destination_dir/$src") ]]; then
    mkdir -p "$(dirname "$destination_dir/$src")"
  fi

  command ln -snf "$full_path" "$destination_dir/$src"
done

source ./_install_extensions.sh
