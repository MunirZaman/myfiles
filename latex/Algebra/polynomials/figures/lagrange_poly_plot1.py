from euclid import *
import euclid.tikzrc as tikzrc

tikz=Tikz('triangle.tex', preamble=tikzrc.standalone)
tikz.usepackage("pgfplots")

tikz.begin('document')

tikz.begin('tikzpicture')

tikz.draw_grid(x_range=[-5,5], y_range=[-5,5], step=.2, style="solid", color="LightSteelBlue!70!white")
tikz.draw_grid(x_range=[-5,5], y_range=[-5,5], step=1, style="solid", color="gray")
tikz.draw_axis(x_range=[-5,5], y_range=[-5,5])

tikz.pgfplots_begin_axis(x_range=[-5,5], y_range=[-5,5], show_axis_lines=True)

tikz.pgfplots_lagrange_polynomial_from_points([(1,1), (2,3), (0, -1), (5, 4), (-5, -3), (4, 4.5)])

tikz.pgfplots_end_axis()

tikz.draw_points((1,1), (2,3), (0, -1), (5, 4), (-5, -3), (4, 4.5))

tikz.end('tikzpicture')
tikz.end('document')

tikz.pdf()
#This will compile the TeX file using pdfLaTeX