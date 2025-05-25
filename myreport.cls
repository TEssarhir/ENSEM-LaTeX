\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myreport}

% Base class
\newcommand{\mystyle}{plain} % Default to 'plain' if no option is provided

\DeclareOption{ensem}{\renewcommand{\mystyle}{ensem}}
\DeclareOption{stage}{\renewcommand{\mystyle}{stage}}
\DeclareOption{symbio}{\renewcommand{\mystyle}{symbio}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

% Process options
\ProcessOptions\relax

\LoadClass[a4paper]{report}

% Required packages
\RequirePackage{titlesec}
\RequirePackage{babel}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\RequirePackage{svg}
\newcommand{\includeicon}[1]{\raisebox{-2.5pt}{\includesvg[height=10pt]{#1}}}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\setmainfont{iwona}
\RequirePackage{vmargin}
% \RequirePackage{xcolor}
\RequirePackage{authoraftertitle}
\RequirePackage{hyperref}
\RequirePackage{pdfpages}
\RequirePackage[bottom]{footmisc}
\RequirePackage{enumitem}
\RequirePackage{pifont}
\RequirePackage{colortbl}
\RequirePackage{tcolorbox}

\setlist[itemize,1]{label={\ding{70}}}
\setlist[itemize,2]{label={\ding{224}}}
\setlist[enumerate,1]{label=\textbf{\arabic*.}}
\setlist[enumerate,2]{label=\textbf{|\alph*|}}

\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{3}

\RequirePackage{float}

\makeatletter
\def\fps@figure{H}
\def\fps@table{H}
\makeatother

% Page layout settings
\setmarginsrb{2cm}{0cm}{2cm}{1.5cm}{2cm}{1cm}{2cm}{1cm} % Margins

% For title importing
\renewcommand
  {\maketitle}
  {
    \includepdf[offset=2.54cm -2.54cm]{Annexe/Couverture/Couverture.pdf}
    \null\thispagestyle{empty}\newpage
    \setcounter{page}{1}
  }

% Hyperref setup
\hypersetup{
  colorlinks=true,
  linkcolor=blue,
  filecolor=magenta,
  urlcolor=cyan
}

% Define the 'ensem' style
\fancypagestyle{ensem}{
  \fancyhf{}
  \renewcommand\footrulewidth{0.4pt}
  \renewcommand\headrulewidth{0.4pt}
  \fancyhead[L]{\includesvg{/Users/es_tk_/Documents/ENSEM/Logos/UL.svg}}
  \fancyhead[R]{\includesvg{/Users/es_tk_/Documents/ENSEM/Logos/ENSEM.svg}}
  \fancyfoot[L]{\fontspec{Cinzel Decorative}\MyAuthor}
  \fancyfoot[R]{\textit{\MyTitle}}
  \fancyfoot[C]{\textit{\thepage/\pageref*{LastPage}}}
}

% Define the 'symbio' style
\fancypagestyle{symbio}{
  \fancyhf{}
  \renewcommand\footrulewidth{0.4pt}
  \renewcommand\headrulewidth{0.4pt}
  \fancyhead[R]{\includesvg{/Users/es_tk_/Documents/Symbio/Logos/Symbio.svg}}
  \fancyfoot[L]{\fontspec{Cinzel Decorative}\MyAuthor}
  \fancyfoot[R]{\textit{\MyTitle}}
  \fancyfoot[C]{\textit{\thepage/\pageref*{LastPage}}}
}

% Define the 'stage' style
\fancypagestyle{stage}{
  \fancyhf{}
  \renewcommand\footrulewidth{0.4pt}
  \renewcommand\headrulewidth{0.4pt}
  \fancyhead[L]{\includesvg{/Users/es_tk_/Documents/ENSEM/Logos/UL & ENSEM.svg}}
  \fancyhead[R]{\includesvg{./Annexe/Logos/_entreprise.svg}}
  \fancyfoot[L]{\fontspec{Cinzel Decorative}\MyAuthor}
  \fancyfoot[R]{\textit{\MyTitle}}
  \fancyfoot[C]{\textit{\thepage/\pageref*{LastPage}}}
}

%! Apply the appropriate style based on the option
\AtEndOfClass{%
  \pagestyle{\mystyle} % Apply the custom style selected by the option
}

% Title format configurations
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename \thechapter}{20pt}{\thispagestyle{\mystyle}\Huge}%[\minitoc\newpage]

\titleformat{name=\chapter,numberless}[display]
  {\normalfont\huge\bfseries}{}{20pt}{\thispagestyle{\mystyle}\Huge}

\titleformat{\section}
  {\normalfont\Large\bfseries\color[HTML]{FF0000}}
  {\thesection}{0.5em}{}

\titleformat{\subsection}
  {\normalfont\large\bfseries\color[HTML]{008000}}
  {\thesubsection~}{0.25em}{}

\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries\color[HTML]{000080}}
  {\thesubsubsection}{0.15em}{}

\titleformat{\paragraph}[runin]
  {\normalfont\bfseries}
  {}{0em}{\ding{43}}[:]

\titlespacing{\section}{0pc}{1cm}{1cm}
\titlespacing{\subsection}{\parindent}{0.5cm}{0.5cm}
\titlespacing{\subsubsection}{\parindent}{0.35cm}{0.35cm}
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\alph{subsubsection}.}

