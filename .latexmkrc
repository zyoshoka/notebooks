#!/usr/bin/env perl

$lualatex = 'lualatex -shell-escape -synctex=1 -interaction=nonstopmode -recorder %O %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %B';
$bibtex = 'pbibtex %O %B';
$makeindex = 'mendex %O -o %D %S';
$max_repeat = 5;
$pdf_mode = 4;
$pvc_view_file_via_temporary = 0;
$out_dir = 'out';

# https://tex.stackexchange.com/questions/579396/using-gnuplottex-causes-latexmk-to-compile-forever
$hash_calc_ignore_pattern{'tex'} = '^%%';
