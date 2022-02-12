sub asy {
  my $fn = shift;
  my ($basename, $dirname) = fileparse($fn);
  return system("asy -cd '$dirname' '$basename'");
}

add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");

$cleanup_includes_generated = 0;
$cleanup_includes_cusdep_generated = 0;

@generated_exts = ( 'aux', 'bbl', 'bcf', 'fls', 'idx', 'ind', 'lof',
                    'lot', 'out', 'pre', 'toc', 'nav', 'snm',
                    'synctex.gz', 'pytxpyg', 'pytxmcr', 'pytxcode',);

$silent = 1;
