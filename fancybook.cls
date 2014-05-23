% fancybook.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancybook}
\input{vc.tex}

\LoadClass{book}

\RequirePackage[letterpaper]{geometry} % Page margins
\geometry{body={6.5in,9in}, centering}

\RequirePackage{titlesec} % Allows customization of titles

\RequirePackage{graphicx} % Required for including pictures
\graphicspath{{Pictures/}} % Specifies the directory where pictures are stored

\RequirePackage{lipsum} % Inserts dummy text

\RequirePackage{tikz} % Required for drawing custom shapes

\RequirePackage[english]{babel} % English language/hyphenation

\RequirePackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists

\RequirePackage{booktabs} % Required for nicer horizontal rules in tables

\RequirePackage{eso-pic}

\usepackage{amsmath,amsfonts,amssymb,mathtools}
\RequirePackage{thmtools,thm-restate}

\declaretheorem{theorem}
\declaretheorem{example}
\declaretheorem{remark}
\declaretheorem{exercise}
\declaretheorem{definition}
\declaretheorem{proposition}

\newcommand{\chapterimage}[1]{}
