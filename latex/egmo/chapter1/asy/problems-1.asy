if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="problems-1";
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
A = (3, 5);
B = (0, 0);
C = (6, 0);

pair M = (B + C)/2;
pair E, F;
E = foot(B, A, C);
F = foot(C, A, B);

D(rightanglemark(B, E, C));
D(rightanglemark(C, F, B));

D(A--B--C--cycle);

D(B -- E);
D(C -- F);
D(E -- F);
D(M -- E);
D(M -- F);

pair H = orthocenter(A, B, C);
D(H -- A);

pair X, Y;
X = A + (B - C)/2;
Y = A + (C - B)/2;
D(X -- Y, Arrows());

D(circumcircle(B, E, C), dashed+red);
D(circumcircle(A, E, F), opacity(.5));

dot("$A$", A, align=N);
dot("$B$", B, align=SW);
dot("$C$", C, align=SE);
dot("$M$", M, align=S);
dot("$E$", E, align=NE);
dot("$F$", F, align=NW);
dot("$X$", X, align=S);
dot("$Y$", Y, align=S);
label("$\ell$", X + 3*(Y - X)/4, align=N);
