if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="problems-2";
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

pair A, B, C, D, O;
A = (1, 3);
B = (0, 0);

pair v = (5, 0);
C = B + v;
D = A + v;

real alpha = degrees(atan2(A.y, A.x));
pair X, Y;
real theta = 20;
pair X1 = B + dir(theta);
pair X2 = D + dir(-(180 - alpha + theta));
pair O = extension(B, X1, D, X2);

D(B -- O);
D(D -- O);
D(A -- O);
D(C -- O);

pair Q = O - v; // o prime
D(A -- Q);
D(B -- Q);
D(Q -- O);
D(circumcircle(A, Q, B), red+dashed);

//dot(X1);dot(X2);
D(A -- B -- C -- D -- cycle);

D(anglemark(Q, O, B, t=12), red);
D(anglemark(Q, A, B, t=12), red);
D(anglemark(C, B, O, t=12), red);
D(anglemark(O, D, C, t=12), red);

dot("$A$", A, align=NW);
dot("$B$", B, align=SW);
dot("$C$", C, align=SE);
dot("$D$", D, align=NE);
dot("$O'$", Q, align=W);
dot("$O$", O, align=E);
