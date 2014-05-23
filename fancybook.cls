% fancybook.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancybook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\input{vc.tex}

\ProcessOptions\relax
\LoadClass{book}


\RequirePackage[letterpaper]{geometry} % Page margins
\geometry{body={6.5in,9in}, centering}

%\RequirePackage{titlesec} % Allows customization of titles

%\RequirePackage{graphicx} % Required for including pictures
%\graphicspath{{Pictures/}} % Specifies the directory where pictures are stored

%\RequirePackage{lipsum} % Inserts dummy text

\RequirePackage{tikz} % Required for drawing custom shapes

\RequirePackage[english]{babel} % English language/hyphenation

%\RequirePackage{enumitem} % Customize lists
%\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists

%\RequirePackage{booktabs} % Required for nicer horizontal rules in tables

%\RequirePackage{eso-pic}

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


\declaretheorem{theorem}
\declaretheorem{example}
\declaretheorem{remark}
\declaretheorem{exercise}
\declaretheorem{definition}
\declaretheorem{proposition}

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



\newcommand{\chapterimage}[1]{}

\endinput
