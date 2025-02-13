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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DEBUG
% Show layout paramters - \layout or \layout* after \begin{document}
\usepackage{layout}
%\usepackage{layouts}             % Illustrates minor details - Useful package
%
% Show outerframe, Uncomment this   - DEBUG
\usepackage{showframe}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

