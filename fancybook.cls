% fancybook.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancybook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\input{vc.tex}

\ProcessOptions\relax
\LoadClass{book}


\RequirePackage[letterpaper]{geometry} % Page margins
\geometry{body={6.5in,9in}, centering}

\RequirePackage{titlesec} % Allows customization of titles

\RequirePackage{graphicx} % Required for including pictures
%\graphicspath{{Pictures/}} % Specifies the directory where pictures are stored

\RequirePackage{lipsum} % Inserts dummy text

\RequirePackage{tikz} % Required for drawing custom shapes

\RequirePackage[english]{babel} % English language/hyphenation

%\RequirePackage{enumitem} % Customize lists
%\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists

\RequirePackage{booktabs} % Required for nicer horizontal rules in tables

\RequirePackage{eso-pic}

\RequirePackage{titletoc} % Required for manipulating the table of contents


\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{thmtools}
\RequirePackage{thm-restate}
\RequirePackage{xcolor} % Required for specifying colors by name                                                                                                      
\definecolor{bookcolor}{RGB}{243,102,25} % Define the orange color used for highlighting throughout the book 
% Font Settings                                                                                                                                                        
\RequirePackage{avant} % Use the Avantgarde font for headings                                                                                                        
\RequirePackage{mathptmx} % Use the Adobe Times Roman as the default text font together with math symbols from the Sym-bol, Chancery and Com-puter Modern fonts       
\RequirePackage{microtype} % Slightly tweak font spacing for aesthetics                                                                                               
\RequirePackage[utf8]{inputenc} % Required for including letters with accents                                                                                         
\RequirePackage[T1]{fontenc} % Use 8-bit encoding that has 256 glyphs                                                                                                 
%\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage[framemethod=TikZ]{mdframed}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Theorem Setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\declaretheoremstyle[
    headfont=\bfseries, 
    notebraces={[}{]},
    bodyfont=\normalfont\itshape,
    headpunct={},
    postheadspace=\newline,
    spacebelow=\parsep,
    spaceabove=\parsep,
    mdframed={
            backgroundcolor=black!5, 
            skipabove=7pt,
            skipbelow=7pt,
            innerleftmargin=5pt,
            innerrightmargin=5pt,
            innertopmargin=5pt,
            leftmargin=0cm,
            rightmargin=0cm,
            innerbottommargin=5pt
            linecolor=bookcolor}   
]{Tstyle}

\declaretheoremstyle[
    headfont=\bfseries,                                                                                                                                                
    notebraces={[}{]},                                                                                                                                                 
    bodyfont=\normalfont\itshape,
    headpunct={},
    postheadspace=\newline,
    spacebelow=\parsep,
    spaceabove=\parsep,
    mdframed={
      skipabove=7pt,
      skipbelow=7pt,
      rightline=false,
      leftline=true,
      topline=false,
      bottomline=false,
      backgroundcolor=bookcolor!10,
      linecolor=bookcolor,
      innerleftmargin=5pt,
      innerrightmargin=5pt,
      innertopmargin=5pt,
      innerbottommargin=5pt,
      leftmargin=0cm,
      rightmargin=0cm,
      linewidth=4pt}
]{Xstyle}  

\declaretheoremstyle[
    headfont=\bfseries,                                                                                                                                                
    notebraces={[}{]},                                                                                                                                                 
    bodyfont=\normalfont\itshape,
    headpunct={},
    postheadspace=\newline,
    spacebelow=\parsep,
    spaceabove=\parsep,
    mdframed={
      skipabove=7pt,
      skipbelow=7pt,
      rightline=false,
      leftline=true,
      topline=false,
      bottomline=false,
      linecolor=bookcolor,
      innerleftmargin=5pt,
      innerrightmargin=5pt,
      innertopmargin=0pt,
      leftmargin=0cm,
      rightmargin=0cm,
      linewidth=4pt,
      innerbottommargin=0pt}
]{Dstyle}
\declaretheoremstyle[
    headfont=\bfseries,                                                                                                                                                
    notebraces={[}{]},
    bodyfont=\normalfont\itshape,
    headpunct={},
    postheadspace=\newline,
    spacebelow=\parsep,
    spaceabove=\parsep,
    mdframed={
      skipabove=7pt,
      skipbelow=7pt,
      rightline=false,
      leftline=true,
      topline=false,
      bottomline=false,
      linecolor=gray,
      backgroundcolor=black!5,
      innerleftmargin=5pt,
      innerrightmargin=5pt,
      innertopmargin=5pt,
      leftmargin=0cm,
      rightmargin=0cm,
      linewidth=4pt,
      innerbottommargin=5pt}
]{Cstyle}

\declaretheorem[
    style=Tstyle,
    name=Theorem,
    numberwithin=chapter
]{theorem}
\declaretheorem[
    style=Estyle,
    name=Example,
    numberwithin=chapter
]{example}
\declaretheorem{remark}
\declaretheorem[
    style=Xstyle,
    name=Exercise,
    numberwithin=chapter
]{exercise}
\declaretheorem[
    style=Dstyle,
    name=Definition,
    numberwithin=chapter
]{definition}
\declaretheorem{proposition}
\declaretheorem[
    style=Cstyle,
    name=Corollary,
    numberwithin=chapter
]{corollary}

\usepackage{hyperref}
\hypersetup{hidelinks,backref=true,pagebackref=true,hyperindex=true,colorlinks=false,breaklinks=true,urlcolor=bookcolor,bookmarks=true,bookmarksopen=false,linktoc=all,pdftitle={\@title},pdfauthor={\@author}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Section styling
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\contentsmargin{0cm} % Removes the default margin
% Chapter text styling
\titlecontents{chapter}[1.25cm] % Indentation
{\addvspace{15pt}\large\sffamily\bfseries} % Spacing and font options for chapters
{\color{bookcolor!60}\contentslabel[\Large\thecontentslabel]{1.25cm}\color{bookcolor}} % Chapter number
{}  
{\color{bookcolor!60}\normalsize\sffamily\bfseries\;\titlerule*[.5pc]{.}\;\thecontentspage} % Page number
% Section text styling
\titlecontents{section}[1.25cm] % Indentation
{\addvspace{5pt}\sffamily\bfseries} % Spacing and font options for sections
{\contentslabel[\thecontentslabel]{1.25cm}} % Section number
{}
{\sffamily\hfill\color{black}\thecontentspage} % Page number
[]
% Subsection text styling
\titlecontents{subsection}[1.25cm] % Indentation
{\addvspace{1pt}\sffamily\small} % Spacing and font options for subsections
{\contentslabel[\thecontentslabel]{1.25cm}} % Subsection number
{}
{\sffamily\hfill\thecontentspage} % Page number
[] 

% Subsubsection text styling
\titlecontents{subsubsection}[1.25cm] % Indentation
{\addvspace{1pt}\sffamily\small} % Spacing and font options for subsections
{\contentslabel[\thecontentslabel]{1.25cm}} % Subsection number
{}
{\sffamily\;\titlerule*[.5pc]{.}\;\thecontentspage} % Page number
[] 


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\sffamily\normalsize\bfseries\chaptername\ \thechapter.\ #1}{}} % Chapter text font settings
\renewcommand{\sectionmark}[1]{\markright{\sffamily\normalsize\thesection\hspace{5pt}#1}{}} % Section text font settings
\fancyhead[LE,RO]{\sffamily\normalsize\thepage} % Font setting for the page number in the header
\fancyhead[LO]{\rightmark} % Print the nearest section name on the left side of odd pages
\fancyhead[RE]{\leftmark} % Print the current chapter name on the right side of even pages
\renewcommand{\headrulewidth}{0.5pt} % Width of the rule under the header
\addtolength{\headheight}{2.5pt} % Increase the spacing around the header slightly
\renewcommand{\footrulewidth}{0pt} % Removes the rule in the footer
\fancypagestyle{plain}{\fancyhead{}\renewcommand{\headrulewidth}{0pt}} % Style for when a plain pagestyle is specified

% Removes the header from odd empty pages at the end of chapters
\makeatletter
\renewcommand{\cleardoublepage}{
\clearpage\ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\thispagestyle{empty}
\newpage
\fi}


\newcommand{\chapterimage}[1]{}




\endinput
