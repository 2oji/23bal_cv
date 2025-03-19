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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Debug
% Show layout paramters - \layout or \layout* after \begin{document}
\usepackage{layout}
%\usepackage{layouts}             % Illustrates minor details - Useful package
%
% Show outerframe, Uncomment this   - Debug
%\usepackage{showframe}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% Load graphics pacakge
\usepackage{graphicx}            %% For linkedin icons, github
\usepackage{calc}                %% To calculate the localLocPin


%%% Tables
\usepackage{tabularx}


%%%
% all later pages the natural height of the material on that page
% no rubber vertical lengths will be stretched
%
\usepackage{ragged2e}
%\textheight=9.75in
\raggedbottom

%%% Symbols
% fontawesome, marvosym, ifsym few pkgs
%
%
\usepackage{fontawesome}         %% For linkedin icons, github


%%%
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

%%%
% new commands and macros
%
\def\RIGHTCOLUMNWIDTH {0.33\textwidth}            % 1/3 of text width
\def\LEFTCOLUMNWIDTH  {0.66\textwidth}            % 2/3 of text width

\newcommand{\LeftColWdth}{0.66\textwidth}
\newcommand{\RightColWdth}{0.33\textwidth}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Tcolorbox
%
% https://ctan.org/pkg/tcolorbox
%
\usepackage{tcolorbox}
\tcbuselibrary{skins,breakable}

\newtcolorbox{headingbox}[1][]{%
   title=User specific details,
   notitle,                                   % Uncomment to show title
      %%% Text Alignment:
      % flush right: right border justification of \raggedleft of Latex
      % flush left: right border justification of \raggedright of Latex
      % flush center: \centering of Latex and not plain Tex
   halign upper=flush center,                 % Horizontally center
   halign lower=flush right,                  % Horizontally right
   sidebyside align=bottom,                   % Vertical alignment same
                                              % minipage c,t,b with baseline
      %%% Geometry:
      % Set the the geometry of text
      % Set the space around text box of upper and lower to 0mm
      % boxrule - space between outer box and upperbox/lowerbox
   left=0mm,right=0mm,top=0mm,bottom=0mm,middle=0mm,boxsep=0mm,     % Remove default spaces
   boxrule=0mm,                               % Draw box with 0mm width, nothing to draw
   arc=0mm,                                   % remove arc at corners
                                              %
      %%% sidebyside
      % lowerbox moved to side
      % no separator line
      % right and left side column gap set
      % unbreakable box
   sidebyside,                                % Make columsn side by side
   lower separated=false,                     % Hide separated dashed line
%   lefthand width=\LEFTCOLUMNWIDTH,           % Set width of left column
   righthand width=\RIGHTCOLUMNWIDTH,         % Set width of left column
   sidebyside gap=3mm,                        % Set gap of left and right column
                                              %
      %%% Colors
      % Sets background color and frame color
   colback=red!5!white,colframe=red!75!white,
                                              %
      %%% Skin:
      % empty - abbreviation of skin=empty. This sets all engines to empty
      %         frame, interior, segmentation, title
      %         even colour is also not filled
      % blank, blanker, blankest - more features
      % Check Manual for more details
   empty,                                     % skin=empty - Disable all skin engines
      %frame empty,
      %segmentation empty,                    % lower separated is nullified
      %interior empty,
      %frame hidden,                          % like to draw=none, fill=none
                                              %
      %%% Debug:
      % Show bounding box of outer frame of tcolorbox
      % Both `draft` OR `show bounding box` together will never exist
      % the command execute at last will overrule earlier one
%   enhanced, show bounding box,
      %%% Debug:
      % While drafting new geometric settings of tcolorbox
      % Highlights all the parameter of box and text design
      % abbreviatin for skin=draft
%   draft,
   nobeforeafter,                             % spaces before and after removed
   #1,                                        % Run time arguments at last
}

\newtcolorbox{masterbox}[3][]{%
   %blanker,
   blank,
   width=\LeftColWdth,
   %enlarge left by=0.36\textwidth,
      %%%
      % halign same of halign upper if lowerbox ignored
   halign upper=flush left,
   before skip=6pt,
   colback=red!5!white,colframe=red!75!white,
      %%%
      % Set this box breakable
   breakable,
      %%%
      % Debug purpose only
%   enhanced,                               % Debug - Grey background
%   show bounding box,                      % Debug
   #2,
      %%%
      % overlay unbroken - so that it prints on first page
      % `and first` - make sure that it parallel to left colmn
      % if tcolorbox is brekable to multi pages
   overlay unbroken and first={%
      \node[inner sep=0pt,outer sep=0pt,
      text width=\RightColWdth,           % 1/3 of textwidth = 0.33 * \textwidth
%         draw=blue, fill=red!5!white,        % Debug
         #3,
         %%%
         % align - left, right, center, flush left, flush right
         align=left,
      below right]
         %%%
         % Place this node to east side at xshift
         % xshift=0pt  , both columns touch each other
         % Calculate it so that both cols touch outer side
         % 0.03 = 1 - (0.64 + 0.33) is the distance b/w 2 columns
         % xshift = 1 - LeftColWdth - RightColWdth
         %
      at ([xshift=0.01\textwidth]frame.north east)
      {%
         \input{#1}
      };
   }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


