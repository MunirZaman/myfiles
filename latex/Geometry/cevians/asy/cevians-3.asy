if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="cevians-3";
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

real r = 2;
pair B, A, O;
A = (r, 0);
B = (-r, 0);
O = (A + B)/2;

pair G = B + (A - B)*0.65;
pair C, D;

C = (r**2 - G.x**2)**(1/2) * dir(90) + G;
D = (r**2 - G.x**2)**(1/2) * dir(-90) + G;

pair N, M;
N = (B + C)/2;
M = (O + C)/2;

pair E = extension(D, N, A, M);

D(CR(O, r));
D(A -- B -- C -- cycle);
D(B -- E -- A);
D(O -- C);
D(D -- C);
D(D -- E);
D(D -- A);
D(E -- C);

dot("$O$", O, align = S);
dot("$A$", A, align = SE);
dot("$B$", B, align = SW);
dot("$C$", C, align = NE);
dot("$D$", D, align = SE);
dot("$G$", G, align = SE);
dot("$E$", E, align = NW);
dot("$M$", M, align = SW);
dot("$N$", N, 1.5*dir(180));
