\ProvidesClass{schneller-resume}[2022/05/07]
\LoadClass{article}

% PACKAGES
\RequirePackage[english,ngerman]{babel} %languages
\RequirePackage{xifthen} %if-else-statements

% NEWCOMMAND
\newcommand{\schEmail}{my@mail.com}
\newcommand{\schPhone}{219778612}
\newcommand{\schFirstname}{Max}
\newcommand{\schMiddlename}{Moritz}
\newcommand{\schLastname}{Mustermann}
\newcommand{\schBirthday}{02.05.1900}

\newcommand{\schEntry}[4]{
\ifthenelse{\isempty{#3}}
{\slimentry{#1}{#2}}{

\begin{figure}
\begin{minipage}[t]{.15\linewidth}
\hfill \textsc{#1}
\end{minipage}
\hfill\vline\hfill
\begin{minipage}[t]{.80\linewidth}
{\bf#2}\\\textit{#3} \footnotesize{#4}
\end{minipage}\\
\vspace{.2cm}
\end{figure}
}}

\newcommand{\slimentry}[2]{

\begin{minipage}[t]{.15\linewidth}
\hfill \textsc{#1}
\end{minipage}
\hfill\vline\hfill
\begin{minipage}[t]{.80\linewidth}
#2
\end{minipage}\\
\vspace{.25cm}
}% end \entry command definition

