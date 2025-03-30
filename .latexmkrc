#!/usr/bin/env perl

$latex            = 'platex -synctex=1 -halt-on-error';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'bibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 100;
$pdf_mode         = 4; # 0: none, 1: pdflatex, 2: ps2pdf, 3: dvipdfmx, 4: lualatex

# tex options
$lualatex     = 'lualatex -shell-escape -synctex=1 -interaction=nonstopmode';
$pdflualatex  = $lualatex;
$pdflatex = 'lualatex %O -synctex=1 %S';

# preview
$pvc_view_file_via_temporary = 6;
## output directory
#$aux_dir          = "build/";
#$out_dir          = "build/";

# cleanup
# remove files except dvi, ps, pdf
$cleanup_mode = 2;

