#!/usr/bin/env bash
cd "$(dirname "$(readlink -f "$0")")" || exit

source ../../utils/libdeploy.bash

VIM_SPEEDDATING_CUSTOM_PATH="${HOME}/.vim/plugged/vim-speeddating/after/plugin"
mkdir -pv "${VIM_SPEEDDATING_CUSTOM_PATH}"
mkdir -pv "${HOME}/.vim/undodir"

link_package \
  './config/speeddating.vim' "${VIM_SPEEDDATING_CUSTOM_PATH}/speeddating.vim"
