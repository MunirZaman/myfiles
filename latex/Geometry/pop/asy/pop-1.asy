if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="pop-1";
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

real PA, PB;
real PX, PY;
PA = 3;
PB = 4;
PX = 6;
PY = 12;

