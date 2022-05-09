if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-1";
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

import graph;
path p = graph(sin, -6.18, 6.18);
Label Lx= Label("$x$", position=EndPoint);
Label Ly = Label("$y$", position=EndPoint);
draw((-6.18, 0) -- (6.18, 0), arrow=Arrows(), L=Lx);
draw((0, -1.5) -- (0, 1.5), arrow=Arrows(), L=Ly);
draw(p);
