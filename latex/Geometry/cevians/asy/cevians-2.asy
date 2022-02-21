if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="cevians-2";
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

size(6cm);
pair A, B, C, D, M, N, P, Q;
A = (0, 2);
B = (0, 0);
C = (2, 0);
D = (2, 2);
M = midpoint(B -- C);
N = midpoint(C -- D);
P = extension(A, M, B, D);
Q = extension(A, N, B, D);

D(A -- B -- C -- D -- cycle);
D(B -- D);
D(A -- M);
D(A -- N);

dot("$A$", A, align=NW);
dot("$B$", B, align=SW);
dot("$C$", C, align=SE);
dot("$D$", D, align=NE);
dot("$M$", M, align=S);
dot("$N$", N, align=E);
dot("$P$", P, align=E);
dot("$Q$", Q, align=S);
