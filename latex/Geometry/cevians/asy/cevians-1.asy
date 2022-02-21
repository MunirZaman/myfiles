if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="cevians-1";
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

size(5cm);
pair A, B, C, X;
A = (2, 3);
B = (0, 0);
C = (4, 0);
X = (B + C)*(0.65);

D(A -- B -- C -- cycle);
D(A -- X);
dot("$A$", A, align=N);
dot("$B$", B, align=SW);
dot("$C$", C, align=SE);
dot("$X$", X, align=S);
