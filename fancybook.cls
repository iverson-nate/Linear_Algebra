% fancybook.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancybook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions\relax
\LoadClass{book}

\RequirePackage[letterpaper]{geometry} % Page margins
\geometry{body={6.5in,9in}, centering}
%\RequirePackage[useTeX]{mmap}
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
%\RequirePackage{mathptmx} % Use the Adobe Times Roman as the default text font together with math symbols from the Sym-bol, Chancery and Com-puter Modern fonts       
\RequirePackage{microtype} % Slightly tweak font spacing for aesthetics                                                                                               
\RequirePackage[utf8]{inputenc} % Required for including letters with accents                                                                                         
\RequirePackage[T1]{fontenc} % Use 8-bit encoding that has 256 glyphs          

\RequirePackage{titling} % For title page                                                                                       
%\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage[framemethod=TikZ]{mdframed}

\renewcommand{\qedsymbol}{$\blacksquare$}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Theorem Setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\declaretheoremstyle[
    headfont=\small\bf\sffamily\color{bookcolor},
    notebraces={---(}{)},
    notefont=\small\bf\sffamily\color{black},
    bodyfont=\normalfont,
    headpunct={\;},
    postheadspace=0.25em,
    spacebelow=0pt,
    spaceabove=0pt,
    headformat=\NAME~\NUMBER\NOTE.,
    mdframed={
      roundcorner=8pt,
      backgroundcolor=black!5, 
      skipabove=7pt,
      skipbelow=7pt,
      innerleftmargin=5pt,
      innerrightmargin=5pt,
      innertopmargin=5pt,
      leftmargin=0cm,
      rightmargin=0cm,
      innerbottommargin=5pt,
      linecolor=bookcolor}   
]{Tstyle}

\declaretheoremstyle[
    headfont=\small\bf\sffamily\color{bookcolor},
    bodyfont=\normalfont,
    headpunct={\;},
    postheadspace=0.25em,
    spacebelow=0pt,
    spaceabove=0pt,
    prefoothook=\hfill{\color{bookcolor}\tiny\ensuremath{\blacksquare}},
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
    headfont=\small\bf\sffamily,
    bodyfont=\normalfont,
    headpunct={\;},
    postheadspace=0.25em,
    spacebelow=5pt,
    spaceabove=5pt,
    prefoothook=\hfill{\tiny\ensuremath{\blacksquare}},
]{Estyle}  

\declaretheoremstyle[
    headfont=\bfseries,                                                                                                                                                
    notefont=\bfseries,                                                                                                                                                
    notebraces={---}{},                                                                                                                                               
    bodyfont=\normalfont,
    headpunct={\;},
    postheadspace=0.25em,
    spacebelow=0pt,
    spaceabove=0pt,
    headformat=\NAME~\NUMBER\NOTE:,
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
    headfont=\small\bf\sffamily\color{bookcolor},
    notefont=\small\bf\sffamily\color{black},
    notebraces={---}{},
    bodyfont=\normalfont,
    headpunct={\;},
    postheadspace=0.25em,
    spacebelow=0pt,
    spaceabove=0pt,
    headformat=\NAME~\NUMBER\NOTE.
]{Cstyle}

\declaretheorem[
    style=Tstyle,
    name=Theorem,
    numberwithin=section
]{theorem}
\declaretheorem[
    style=Estyle,
    name=Example,
    numberwithin=chapter
]{example}
\declaretheorem[
    style=Xstyle,
    name=Exercise,
    numberwithin=chapter
]{exercise}
\declaretheorem[
    style=Dstyle,
    name=Definition,
    numberwithin=section
]{definition}
\declaretheorem[
    style=Cstyle,
    name=Proposition,
    sibling=theorem
]{proposition}
\declaretheorem[
    style=Cstyle,
    name=Corollary,
    sibling=theorem
]{corollary}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% remark
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{remark}{\par\vspace{10pt}\small % Vertical white space above the remark and smaller font size
\begin{list}{}{
\leftmargin=35pt % Indentation on the left
\rightmargin=25pt}\item\ignorespaces % Indentation on the right
\makebox[-2.5pt]{\begin{tikzpicture}[overlay]
\node[draw=bookcolor!60,line width=1pt,circle,fill=bookcolor!25,font=\sffamily\bfseries,inner sep=2pt,outer sep=0pt] at (-15pt,0pt){\textcolor{bookcolor}{R}};\end{tikzpicture}} % Orange R in a circle
\advance\baselineskip -1pt}{\end{list}\vskip5pt} % Tighter line spacing and white space after remark

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@keywords{}
\def\keywords#1{
\let\@keywords\empty
\def\@keywords{#1}}

\def\@subject{}
\def\subject#1{
\let\@subject\empty
\def\@subject{#1}}

\def\@GITAbrHash{}
\def\GITAbrHash#1{
\let\@GITAbrHash\empty
\def\@GITAbrHash{#1}}

\def\@GITAuthorDate{}
\def\GITAuthorDate#1{
\let\@GITAuthorDate\empty
\def\@GITAuthorDate{#1}}

\def\@GITAuthorName{}
\def\GITAuthorName#1{
\let\@GITAuthorName\empty
\def\@GITAuthorName{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% cleaning up \maketitle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pdfstringdefDisableCommands{\def\and{,\ }}
\pretitle{
\pdfbookmark[1]{Title Page}{Title Page}
\AddToShipoutPicture*{\put(6,5){\includegraphics[scale=1]{Pictures/background}}}
\hypersetup{%
  pdfauthor=\@author,
  pdftitle=\@title,
  pdfsubject=\@subject,
  pdfkeywords=\@keywords,
  pdfcreator={fancybook.cls Last git commit: \@GITAbrHash\ \@GITAuthorDate \ by \@GITAuthorName},
}
\begin{center}\normalfont\fontsize{35}{35}\sffamily\selectfont}
\preauthor{\begin{center}
\Huge\bf \lineskip 0.5em%
\begin{tabular}[t]{c}}
\predate{\color{white}}
\postdate{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% chapter heading setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%       MINI TABLE OF CONTENTS IN CHAPTER HEADS
%----------------------------------------------------------------------------------------

% Section text styling
\titlecontents{lsection}[0em] % Indendating
{\footnotesize\sffamily} % Font settings
{}
{}
{}

% Subsection text styling
\titlecontents{lsubsection}[.5em] % Indentation
{\normalfont\footnotesize\sffamily} % Font settings
{}
{}
{}


\def\@thechapterimage{}
\def\chapterimage#1{
\let\@thechapterimage\empty
\def\@thechapterimage{#1}
}

\def\thechapter{\arabic{chapter}}
\def\@makechapterhead#1{
\thispagestyle{empty}
{\centering \normalfont\sffamily
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\startcontents
\begin{tikzpicture}[remember picture,overlay]
\node at (current page.north west)
{\begin{tikzpicture}[remember picture,overlay]
\node[anchor=north west,inner sep=0pt] at (0,0) {\includegraphics[width=\paperwidth]{\@thechapterimage}};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commenting the 3 lines below removes the small contents box in the chapter heading
\fill[color=bookcolor!10!white,opacity=.6] (1cm,0) rectangle (10cm,-7cm);
\node[anchor=north west] at (1.1cm,.35cm) {\parbox[t][8cm][t]{10cm}{\huge\bfseries\flushleft \printcontents{l}{1}{\setcounter{tocdepth}{2}}}};
\draw[anchor=west] (5cm,-9cm) node [rounded corners=20pt,fill=bookcolor!10!white,text opacity=1,draw=bookcolor,draw opacity=1,line width=1.5pt,fill opacity=.6,inner sep=12pt]{\huge\sffamily\bfseries\textcolor{black}{\thechapter. #1\strut\makebox[22cm]{}}};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{tikzpicture}};
\end{tikzpicture}}
\par\vspace*{230\p@}
\fi
\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% copyrightpage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{copyrightpage}%
{
\let\originaland\and
\renewcommand\and{,\ }
\newpage
~\vfill
\thispagestyle{empty}

\noindent Copyright \copyright\ \@date\ \@author\\
}
{\let\and\originaland}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\@originaltableofcontents\tableofcontents
\renewcommand\tableofcontents{%
\setcounter{tocdepth}{3}

\pagestyle{empty} % No headers
\pdfbookmark[1]{Table of Contents}{Table of Contents}
\@originaltableofcontents % Print the table of contents itself

\cleardoublepage % Forces the first chapter to start on an odd page so it's on the right

\pagestyle{fancy} % Print headers again
}

\endinput
