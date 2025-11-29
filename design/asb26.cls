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
\ProvidesClass{asb26}[2025/11/29 Two column First page and Full page onwards LaTeX class]

\DeclareOption*{% this lets you use options like a4paper, letterpaper, etc that are defined by the article class
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax

\LoadClass{article}


%%
% Load Geometry package after \LoadClass{article} to make effect
%
%\usepackage[top=0.75in, bottom=0.75in, left=0.55in, right=0.85in]{geometry}
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
%%

%%
% Dump data for checking - \blindtext[1]
% \blindtext = paragraph of dummy text
% \Blindtext = multiple paragraphs (one page long) of dummy text
% \Blinddocument = entire document, If you specify documentclass
%      as report then \Blinddocument will generate the document
%      with multiple chapters, sections, subsections, paragraphs,
%       and itemized lists.
\usepackage{blindtext}
\usepackage{lipsum}              % Dummy data - lipsum[2-4]
%%

%% Load graphics pacakge
\usepackage{graphicx}            %% For linkedin icons, github
\usepackage{calc}                %% To calculate the localLocPin
\usepackage{tabularx}
%%
% all later pages the natural height of the material on that page
% no rubber vertical lengths will be stretched
%
\usepackage{ragged2e}
%\textheight=9.75in
\raggedbottom

%% Symbols
% fontawesome, marvosym, ifsym few pkgs
%
%
\usepackage{fontawesome}         %% For linkedin icons, github

%%
%
%
\usepackage{xcolor} % used for colouring and underline the links.
\usepackage{hyperref} % used to generate links i.e mailto:xxxx@ymail.com
\hypersetup{
   colorlinks=true,
   linkcolor=blue,
   filecolor=magenta,
%  urlcolor=cyan,
   urlcolor=blue,
   linkbordercolor=red
}
\definecolor{ltgrey}{gray}{0.50}
\definecolor{black}{RGB}{0, 0, 0}

%% --- Show frame of the layout --- DEBUG
% Show layout paramters - \layout or \layout* after \begin{document}
\usepackage{layout}
% \usepackage{layouts}             % Illustrates minor details - Useful package

%% --- Show frame of the layout --- DEBUG
% Show outerframe, Uncomment this   - Debug
\usepackage{showframe}

%% --- [draft] show all boundaries --- DEBUG
\usepackage[draft]{flowfram}
%
% draft option will draw the bounding boxes for each defined frame.
%  Bottom right of each bounding box (except for the bounding box
%  denoting the typeblock), a marker will be shown in the form: [T:IDN;IDL]
%  -  draft option set all conditionals to true
%      \showtypeblocktrue  % Display the bounding box for the typeblock.
%      \showtypeblockfalse % Do not display the bounding box for the typeblock.
%      \showmarginstrue    % Display the bounding box for the margins.
%      \showmarginsfalse   % Do not display the bounding box for the margins.
%      \showframebboxtrue  % Display the bounding box for the frames.
%      \showframebboxfalse % Do not display the bounding box for the frames
%
% The text of the document environment will flow from one frame to the next in
%  order of definition.
%
% \newflowframe[page-list]{width}{height}{x}{y}[label]
%  - width, height - width, height of frame
%  - x, y - Position of the bottom left hand corner of the frame relative to the
%    bottom left hand corner of the typeblock.
%
%  - page-list - optional argument, indicates the list of pages for which this
%    frame is defined. A page list can either be specified by the
%    keywords: all, odd, even or none, or by a comma-separated list of either
%    individual page numbers or page ranges. If page-list is omitted, all assumed.
%
\def\LEFTCOLUMNWIDTH  {0.65\textwidth}            % 2/3 of text width
\def\RIGHTCOLUMNWIDTH {0.32\textwidth}            % 1/3 of text width
\def\SIDEBYSIDEGAP {0.68\textwidth}

\newcommand{\LeftColWdth}{0.66\textwidth}
\newcommand{\RightColWdth}{0.33\textwidth}

% define lengths to help compute positions
\newlength\titleH
\newlength\titleW
\newlength\titleY

% Create a static frame to put title in
\setlength{\titleH}{3cm}
\setlength{\titleW}{\textwidth}                 % Set textwidth
\setlength{\titleY}{\textheight}                % Set textheight
\addtolength{\titleY}{-\titleH}                 % Decrease Title Height by titleH
%  Page 1 - Title Column - Static F1
\newstaticframe[1]{\titleW}{\titleH}{0pt}{\titleY}[TitleCL]
\setstaticframe{1}{valign=t}        % Page 19 flowfram.pdf, default c
%
%  Page 1 - Right Column - Static F2
\newstaticframe[1]{\RIGHTCOLUMNWIDTH}{\titleY}{\SIDEBYSIDEGAP}{0pt}[RightCL]
\setstaticframe{2}{valign=t}
%
%  Page 1 - Left column - Flow F 1
\newflowframe[1]{\LEFTCOLUMNWIDTH}{\titleY}{0pt}{0pt}[LeftCL]
%  Page 2 & onwards - Full page - Flow F 2
%    Define the page layout for SUBSEQUENT pages (from page 2 onwards)
%    This frame spans the full text width so that data will flow from left
%    column to this one.
\newflowframe[>1]{\textwidth}{\textheight}{0pt}{0pt}[FullCL]

%% --- [draft] Colored frames --- DEBUG
% Modify flowframe attribute
% \setflowframe{ID-list}{key=value list}
%   ID-list can be found with draft option
%   Frame ID allocated in order it is defined
\setstaticframe{1}{backcolor=magenta}
\setstaticframe{2}{backcolor=green}
\setflowframe{1}{label=hi, backcolor=red}
\setflowframe{2}{backcolor=yellow}

