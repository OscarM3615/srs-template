\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{srsdocument}[2023/03/01 SRS Document]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

\LoadClass{report}

\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{parskip}
\RequirePackage{titling}
\RequirePackage{tabularx}

\newcommand{\version}[1]{\def\theversion{#1}}

\newcommand{\revision}[4]{%
	\hline
	#1 & #2 & #3 & #4\\}

\renewcommand{\maketitle}{%
\hypersetup{pageanchor=false}
\begin{titlepage}
	\begin{flushright}
		\rule{\textwidth}{2pt}
		\vspace{0.5in}

		\begin{bfseries}
			\Huge
			Software Requirements\\
			Specification\\
			\vspace{0.5in}
			\thetitle
			\vspace{0.5in}

			\LARGE Version \theversion\\
			\vspace{1in}
		\end{bfseries}

		\Large
		Prepared by: \theauthor
		\vspace{0.25in}

		Date: \thedate

		\vfill
		\rule{\textwidth}{2pt}
	\end{flushright}
\end{titlepage}
\hypersetup{pageanchor=true}
}

\setlength{\parindent}{0.25in}

\titleformat{\chapter}[hang]{\LARGE\bfseries}{\thechapter}{0.5em}{}
\titlespacing*{\chapter}{0pt}{-24pt}{0pt}

\onehalfspacing
