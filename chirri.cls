%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Latex Template - Tex file
% Compile with xelatex
% Version 1.0
% Shared under GPLv3
%
%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%

\NeedsTeXFormat{LaTeX2e}     % Sets the LaTex version of class to work
\ProvidesClass{chirri}[2025/02/12 Two column multipage LaTeX class]

\DeclareOption*{% this lets you use options like a4paper, letterpaper, etc that are defined by the article class
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax

\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%
% Load Geometry package after \LoadClass{article} to make effect
%
%\usepackage[top=0.75in, bottom=0.75in, left=0.55in, right=0.85in]{geometry}
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
%%%%%%%%%%%%%%%%%%%%%%%%


\setlength{\parindent}{0pt}      %(to suppress indentation, when starting a new paragraph)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DEBUG
% Show layout paramters - \layout or \layout* after \begin{document}
\usepackage{layout}
%\usepackage{layouts}             % Illustrates minor details - Useful package
%
% Show outerframe, Uncomment this   - DEBUG
\usepackage{showframe}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dump data for checking - \blindtext[1]
% \blindtext = paragraph of dummy text
% \Blindtext = multiple paragraphs (one page long) of dummy text
% \Blinddocument = entire document, If you specify documentclass
%      as report then \Blinddocument will generate the document
%      with multiple chapters, sections, subsections, paragraphs,
%       and itemized lists.
\usepackage{blindtext}
\usepackage{lipsum}              % Dummy data - lipsum[2-4]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Tcolorbox
%
% https://ctan.org/pkg/tcolorbox
%
\usepackage{tcolorbox}
\tcbuselibrary{breakable}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


