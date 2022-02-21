if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="problems-3";
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

pair A, B, C;
real r = 2;

A = r*dir(100);
B = r*dir(180 + 30);
C = r*dir(-20);
pair P = r*dir(70);

D(A -- B -- C -- cycle);
D(circumcircle(A, B, C));

pair X, Y, Z;
X = foot(P, B, C);
Y = foot(P, C, A);
Z = foot(P, A, B);

D(P -- X);
D(P -- Y);
D(P -- Z);
D(P -- A);
D(P -- C);
D(A -- Z);
D(X -- Y -- Z);

D(rightanglemark(P, X, C, s = 4));
D(rightanglemark(P, Y, C, s = 4));
D(rightanglemark(P, Z, A, s = 4));

D(circumcircle(P, X, Y), dashed+red);
D(circumcircle(P, Y, Z), dashed+red);

dot("$A$", A, align=NW);
dot("$B$", B, align=SW);
dot("$C$", C, align=SE);
dot("$P$", P, align=NE);

dot("$X$", X, align=S);
dot("$Y$", Y, align=SW);
dot("$Z$", Z, align=NW);
