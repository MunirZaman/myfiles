if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";

import cse50;
import olympiad;

size(8cm); // set a reasonable default

size(3cm);
pair O = (0, 0);
pair P = (1, .5);
pair H = P*2;
D(O -- P -- H, dashed);
dot("$\mathcal{H}(P)$", H, align=N);
dot("$O$", O, align=S);
dot("$P$", P, align=NW);
