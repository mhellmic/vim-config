" VIM Configuration File
execute pathogen#infect()
filetype off
"
"set t_kb=
"fixdel
"
set background=dark
" set a mapleader for more commands
let mapleader = ","
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
"set smartindent
" set filetype indent
filetype plugin indent on
" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 2 spaces
set shiftwidth=2     " indent also with 2 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
"set textwidth=80
" turn syntax highlighting on
syntax on
" colorscheme wombat256
" turn line numbers on
set number

nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j


" macros for include insertions in C/C++
" type _ i and _ I in sequence, respectively
nmap _i I<C-m><Esc>kI#include ""<Esc>$i
imap <C-z>i <Esc>_i
nmap _I I<C-m><Esc>kI#include <><Esc>$i
imap <C-z><C-i> <Esc>_I

" custom commands for C++ file editing
command! -nargs=1 -range PutQualifier <line1>,<line2>s/\(\~\=\w*(.*)\)/<args>::\1/
command! -nargs=0 -range MakeFunctionBodies <line1>,<line2>s/\w*(.*)\zs;\ze$/\r{\r}/
command! -nargs=0 -range PutAbsolutePydmliteInclude <line1>,<line2>s/"include\/pydmlite.h"/<dmlite\/python\/pydmlite.h>/

" insert latex frames
nmap F I<C-m><Esc>ko\begin{frame}\note{ }<Esc>o\frametitle{}<Esc>o\end{frame}<Esc>kwa
nmap _em o\begin{itemize}<Esc>o\item <Esc>o\end{itemize}<Esc>k$
nmap _en o\begin{enumerate}<Esc>o\item <Esc>o\end{enumerate}<Esc>k$
nmap _gr o\includegraphics[width=\textwidth]{}<Esc>
nmap _co o\begin{columns}<Esc>o\column{.5\textwidth}<Esc>o\column{.5\textwidth}<Esc>o\end{columns}<Esc>kk^
nmap _ot o\note{<Esc>o}<Esc>k$
