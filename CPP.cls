%--------------------------------------------------------------------
%Created on:    Nov. 03, 2006
%Author:        Tzvetelin Petrov
%--------------------------------------------------------------------
% Modified by Berit Givens May 07, 2014
% Modified by Rafael Morales May 10, 2014
% Modified by Jason De Cristofaro Dec 14, 2017
%   ## variablized more fields to make sig and title pages more general across departments
%   ## changed "quarter" to "term" to reflect CPP semster convesion
%--------------------------------------------------------------------
% Register the class.
%--------------------------------------------------------------------
    \NeedsTeXFormat{LaTeX2e} \ProvidesClass{CPP}[2006/11/03 Cal Poly Pomona Grad Study Format]

%--------------------------------------------------------------------
% Load the report class to handle unknown options.
%--------------------------------------------------------------------
    \DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
    \ProcessOptions\relax \LoadClass[letterpaper,12pt]{report}

%--------------------------------------------------------------------
% Define variables.
%--------------------------------------------------------------------
    %Title name line 1.
    \newcommand{\titleone}[1]{\gdef\@titleone{\mbox{\uppercase{#1}}}}

    %Title name line 2.
    \newcommand{\titletwo}[1]{\gdef\@titletwo{\mbox{\uppercase{#1}}}}
    
    %The type of this document: Thesis/Project.
    \newcommand{\doctype}[1]{\gdef\@doctype{#1}}
    
    %The type of this document in UPPERCASE: Thesis/Project.
    \newcommand{\doctypeUp}[1]{\gdef\@doctypeUp{\mbox{\uppercase{#1}}}}

    %Full name of the degree: Master of Science.
    \newcommand{\degree}[1]{\gdef\@degree{#1}}
    
    %Full name of the field in which the degree is awarded: Mathematics.
    \newcommand{\field}[1]{\gdef\@field{#1}}    

    %University Name
    \newcommand{\University}[1]{\gdef\@University{#1}}

    %Academic Department - will be written as "Department of \@Department"
    \newcommand{\Department}[1]{\gdef\@Department{#1}}
    
    %Full name of the author.
    \newcommand{\Author}[1]{\gdef\@Author{#1}}
    
    %Full name of the advisor
    \newcommand{\Advisor}[1]{\gdef\@Advisor{#1}}

    %Full name of the committee member 2
    \newcommand{\MemberA}[1]{\gdef\@MemberA{#1}}
    \newcommand{\MemberAtitle}[1]{\gdef\@MemberAtitle{#1}}
    \newcommand{\MemberAagency}[1]{\gdef\@MemberAagency{#1}}

    %Full name of the committee member 3
    \newcommand{\MemberB}[1]{\gdef\@MemberB{#1}}
    \newcommand{\MemberBtitle}[1]{\gdef\@MemberBtitle{#1}}
    \newcommand{\MemberBagency}[1]{\gdef\@MemberBagency{#1}}
    
    
    %Date the degree is awarded.
    \newcommand{\Year}[1]{\gdef\@Year{#1}}
    \newcommand{\Term}[1]{\gdef\@Term{#1}}
    
    %The acknowledgments text
    \newcommand{\Acknowledgments}[1]{\gdef\@Acknowledgments{#1}}
    
    %The abstract text
    \newcommand{\Abstract}[1]{\gdef\@Abstract{#1}}

%--------------------------------------------------------------------
% Line spacing.
%--------------------------------------------------------------------
\newlength{\defbaselineskip}
\setlength{\defbaselineskip}{\baselineskip}
\newcommand{\setlinespacing}[1]%
           {\setlength{\baselineskip}{#1 \defbaselineskip}}
\newcommand{\doublespaceing}{\setlength{\baselineskip}%
                           {2 \defbaselineskip}}
\newcommand{\singlespacing}{\setlength{\baselineskip}{\defbaselineskip}}
\setlength\arraycolsep{2pt}

%--------------------------------------------------------------------
% Set the margins.
%--------------------------------------------------------------------
    %Paper size
    \setlength{\paperheight}{11in}
    \setlength{\paperwidth}{8.5in}
    
    %Left margin
    \setlength{\marginparwidth}{0in}
    \setlength{\marginparsep}{0in}
    \setlength{\oddsidemargin}{0.5in}
    \setlength{\evensidemargin}{0in}
    
    %Right margin
    \setlength{\textwidth}{5.85in} 
    
    %Top margin
    \setlength{\voffset}{0in}
    \setlength{\topmargin}{0in}

    %Bottom margin
    \setlength{\headheight}{0.125in}
    \setlength{\headsep}{0.25in}
    \setlength{\textheight}{8.375in}
    \setlength{\footskip}{0.50in}
    
    \raggedbottom

%\setlength{\paperheight}{11.5in} 
%\setlength{\headsep}{0in}
%\setlength{\topmargin}{0in} 
%\setlength{\headheight}{0in}
%\setlength{\voffset}{0.5in} 
%\setlength{\oddsidemargin}{0.75in}
%\setlength{\evensidemargin}{0.75in} 
%\setlength{\textheight}{8.0in}
%\setlength{\textwidth}{5.25in} 
%\setlength{\footskip}{.95in}
%\linespread{1.67}
%\setlength{\footskip}{.7in}

%--------------------------------------------------------------------
% Cover Sheet.
%--------------------------------------------------------------------
\newcommand{\coversheet}{
    \newpage
    \null
    \pagestyle{empty}
}
%--------------------------------------------------------------------
% Title Page.
%--------------------------------------------------------------------
\renewcommand{\titlepage}{
    \newpage
    %set page numbering to roman, reset counting from 1, 
    %and do not display on this page
    \pagestyle{plain} 
    \thispagestyle{empty}
    \pagenumbering{roman}
    \begin{center} 
        \vspace*{0.725in}
        {\textbf \@titleone}\\[0.8\baselineskip]
        {\textbf \@titletwo}\\
        \vskip1in
        {\small A \@doctype}\\[0.6\baselineskip] 
        {\small Presented to the}\\[0.6\baselineskip]
        {\small Faculty of}\\[0.6\baselineskip]
        {\small \@University}\\[0.6\baselineskip]
        % {\small California State Polytechnic University, Pomona}\\[0.6\baselineskip]
        \vskip1in
        {\small In Partial Fulfillment}\\[0.6\baselineskip]
        {\small Of the Requirements for the Degree}\\[0.6\baselineskip]
        {\small \@degree}\\[0.6\baselineskip]
        {\small In}\\[0.6\baselineskip]
        {\small \@field}\\[0.6\baselineskip]
        \vskip1in
        {\small By}\\[0.6\baselineskip]
        {\small \@Author}\\[0.6\baselineskip]
        {\small \@Year}\\[0.6\baselineskip]
    \end{center}
}



%--------------------------------------------------------------------
% Signature page. Berit's Version
%--------------------------------------------------------------------
\newcommand{\signaturepagename}{Signature Page}
\newcommand{\signaturepage}{
    \newpage
    \begin{center}   
        \vspace*{1.2cm}
        \uppercase{\textbf{\signaturepagename}}\\[3\baselineskip]
    \end{center}
    \vspace{-0.2in}
    \begin{tabular}{ll}
    \textbf{\small \@doctypeUp :} & {\small \@titleone}\\
    & {\small \@titletwo}\\
    &\\
    &\\
    \textbf{\small AUTHOR:} & {\small \@Author}\\
    &\\
    &\\
    \textbf{\small DATE SUBMITTED:} & {\small \@Term~\@Year}\\
    &\\
    & Department of \@Department\\
    % & Department of Geological Sciences\\
    &\\
    &\\
    {\small Dr. \@Advisor} & \rule{3.5in}{0.4pt}\\
    {\small Thesis Committee Chair} & \\
    %  {\small Geological Sciences} & \\
     {\small \@Department} & \\
     &\\
     &\\
     {\small Dr. \@MemberA} & \rule{3.5in}{0.4pt}\\
    %   {\small Geological Sciences} & \\
    
      {\small \@MemberAtitle} & \\
      {\small \@MemberAagency} & \\
       &\\
     &\\
     {\small Dr. \@MemberB} & \rule{3.5in}{0.4pt}\\
    %   {\small Geological Sciences} & \\
      {\small \@MemberBtitle} & \\
      {\small \@MemberBagency} & \\
    \end{tabular}
%    \noindent \textbf{\small \@doctypeUp :}\hspace{1.1in} {\small \@titleone}\\[0.3\baselineskip]
%    \null\hspace{1.82in}{\small \@titletwo}\\[1.2\baselineskip]
%    \textbf{\small AUTHOR:}\hspace{0.98in}{\small \@Author}\\[0.8\baselineskip]
%    \textbf{\small DATE SUBMITTED:}\hspace{0.15in}{\small \@quarter~\@Year}\\[0.8\baselineskip]
%    \null\hspace{1.75in} Department of Mathematics and Statistics\\[3\baselineskip]
%    {\small Dr. \@Advisor}\hspace{\fill}\rule{3.7in}{0.4pt}\\[0.05\baselineskip]
%    {\small Thesis Committee Chair}\\[0.05\baselineskip]
%    {\small Mathematics \& Statistics}\\[3\baselineskip]
%    {\small Dr. \@MemberA}\hspace{\fill}\rule{3.7in}{0.4pt}\\[0.05\baselineskip]
%    {\small Mathematics \& Statistics}\\[3\baselineskip]
%    {\small Dr. \@MemberB}\hspace{\fill}\rule{3.7in}{0.4pt}\\[0.05\baselineskip]
%    {\small Mathematics \& Statistics}\\[3\baselineskip]
}


%--------------------------------------------------------------------
% Acknowledgements page.
%--------------------------------------------------------------------
\newcommand{\acknowledgmentspagename}{Acknowledgements}
\newcommand{\acknowledgmentspage}{
    \newpage
    \begin{center}    
        \vspace*{0.375in}
        \uppercase{\textbf{\acknowledgmentspagename}}%\\[2\baselineskip]
    \end{center}
	\setlength{\baselineskip}{1.66 \defbaselineskip}
    \renewcommand{\baselinestretch}{1.66} \small\normalsize%
    \@Acknowledgments    
   	%\renewcommand{\baselinestretch}{0.6} 
}

%--------------------------------------------------------------------
% Abstract page.
%--------------------------------------------------------------------
\newcommand{\abstractpagename}{Abstract}
\newcommand{\abstractpage}{
    \newpage
    \begin{center}    
        \vspace*{0.375in}
        \uppercase{\textbf{Abstract}}%\\[2\baselineskip]
    \end{center}
   \renewcommand{\baselinestretch}{1.66} \small\normalsize%
    \@Abstract
    %\renewcommand{\baselinestretch}{0.6}
}