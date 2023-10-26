\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math_exercises}[2023/09/22 Math Class]

\LoadClass[a4paper]{article}

% Packages
\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage[spanish]{babel}
\decimalpoint

\RequirePackage[colorlinks = true,
            linkcolor = blue,
            urlcolor  = blue,
            citecolor = blue,
            anchorcolor = blue]{hyperref}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage[autostyle]{csquotes}
\RequirePackage{xcolor}


% Settings
\pagestyle{empty} 
\renewcommand{\baselinestretch}{1.5} 
\setlist[enumerate,2]{label=(\alph*)} % Second level of enumerate (a), (b), (c), ...
\MakeOuterQuote{"} % Makes " work as expected
\definecolor{darkblue}{RGB}{0,0,100}


% Command definitions

% Defines enumcols, which combines enumerato with multicols
\NewDocumentEnvironment{enumcols}{O{1}}
{
  \ifnum#1>1 \begin{multicols}{#1} \fi
  \begin{enumerate}
}
{
  \end{enumerate}
  \ifnum#1>1 \end{multicols} \fi
}

% Defines the header for the practice
\newcommand{\practiceheader}[2]{
    \noindent \hrulefill \\
    \vspace{-24pt}
    \begin{center}
        \textbf{#1} \\
        #2
    \end{center}
    \vspace{-10pt}
    \hrulefill \\
}

\newcommand{\Item}{\item[\stepcounter{enumii}$\blacktriangleright$\textbf{(\alph{enumii})}]} % Item with triangle
\newcommand{\answer}{\item[$\blacktriangleright$]} % Answer
\newcommand{\exercise}{\item} % Exercise
\newcommand{\then}{\to}
\newcommand{\eq}{\leftrightarrow}
\newcommand{\xor}{\veebar}
\newcommand{\nor}{\downarrow}
\newcommand{\nimply}{\nrightarrow}
\newcommand{\nand}{\uparrow}
\newcommand{\Then}{\Rightarrow}
\newcommand{\Eq}{\Leftrightarrow}
\newcommand{\intersec}{\cap}
\newcommand{\union}{\cup}
\newcommand{\symdiff}{\Delta}
\newcommand{\compl}[1]{\overline{#1}}
\newcommand{\df}[2]{\displaystyle\frac{#1}{#2}}
\newcommand{\f}[2]{\displaystyle\frac{#1}{#2}}
\newcommand{\img}[2]{\begin{minipage}[t]{\linewidth}\raisebox{-\height}{\includegraphics[width=#1]{#2}}\end{minipage}}
\newcommand{\power}[1]{\mathcal{P}\left(#1\right)}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\SEL}[1]{\left\{\begin{matrix} #1 \end{matrix}\right.} % System of equations
\newcommand{\Cod}{\text{Cod}}
\newcommand{\floor}[1]{\lfloor #1 \rfloor}
\newcommand{\ceil}[1]{\lceil #1 \rceil}
\newcommand{\degs}{^{\circ}} % Degree symbol

\NewDocumentCommand{\FormatItem}{m}{#1\\[-4pt]}

\NewDocumentCommand{\Reasoning}{>{\SplitList{;}}m m}{
  \begin{minipage}[t]{\linewidth}
    \ProcessList{#1}{\FormatItem} 
    \\[-24pt] \hspace{-.5cm}\rule[.5pt]{2.7cm}{.5pt}\\[-8pt]
    #2 \\[-8pt]
  \end{minipage}%
}

\NewDocumentCommand{\DReasoning}{>{\SplitList{;}}m >{\SplitList{;}}m m}{
  \begin{minipage}[t]{\linewidth}
    \ProcessList{#1}{\FormatItem} 
    \\[-24pt] \hspace{-.5cm}\rule[.5pt]{2.7cm}{.5pt}\\[-8pt]
    \ProcessList{#2}{\FormatItem}
    \\[-24pt] \hspace{-.5cm}\rule[.5pt]{2.7cm}{.5pt}\\[-8pt]
    #3 \\[-8pt]
  \end{minipage}%
}

\endinput
