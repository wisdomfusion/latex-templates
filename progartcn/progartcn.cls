%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% progartcn - Yet Another LaTeX Template for Programming or Technical Articles or Tutorials
%% WisdomFusion@gmail.com
%% July, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{progartcn}[July, 2018 Yet Another LaTeX Template for Technical Articles or Tutorials]
\LoadClass[a4paper]{ctexart}

\RequirePackage{xunicode}
\RequirePackage[dvipsnames]{xcolor}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% hyperref settings
%% 超链接设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{hyperref}
\hypersetup{
  bookmarksnumbered,
  colorlinks,
  linkcolor={black},
  citecolor={black},
  urlcolor={black}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% graphicx settings
%% 图片设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{graphbox}
\RequirePackage{wrapfig}
\graphicspath{{./figs/}{./figure/}{./figures/}{./image/}{./images/}{./graphics/}{./graphic/}{./pictures/}{./picture/}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% geometry settings
%% 页面设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{
  textwidth=138mm,
  textheight=215mm,
  left=27mm,
  %% or
  %% inner=23mm,
  right=27mm,
  %% or
  %% outer=18mm,
  top=25.4mm, bottom=25.4mm,
  headheight=2.17cm,
  headsep=4mm,
  footskip=12mm,
  heightrounded,
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% fonts settings
%% 字体设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
%% \usepackage{ebgaramond}

%% 开明式：句末点号用占一个汉字宽度，标号和句内点号占半个汉字宽度
\punctstyle{kaiming}

\setmainfont{Minion Pro}
\setsansfont{Myriad Pro}
\setmonofont{Courier Std}

\setCJKmainfont[BoldFont={Source Han Sans SC Bold}, ItalicFont={Adobe Kaiti Std}, BoldItalicFont={Adobe Fangsong Std}]{Source Han Serif SC}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

%%\newfontfamily\adobefs{Adobe Fangsong Std}
%%\newfontfamily\adobekt{Adobe Kaiti Std}
%%\newfontfamily\shserif{Source Han Serif SC}
%%\newfontfamily\shsans{Source Han Sans SC}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% titlesec
%% 标题设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\RequirePackage{zhnumber}


%% \renewcommand\abstractname{Summary}
\renewenvironment{abstract}{\noindent\rule{\textwidth}{.5pt}\\[2ex] \centering\begin{minipage}{.95\textwidth}{\zihao{-4}\bfseries\abstractname}\\}
{\par\noindent\end{minipage}\\[2ex] \rule{\textwidth}{.5pt}}

%% section
\titleformat{\section}
[hang]
{\sffamily}
{\centering\zihao{-3}\bfseries\thesection\enspace}
{1pt}
{\zihao{-3}\bfseries}

%% subsection
\titleformat{\subsection}
[hang]
{\sffamily}
{\zihao{4}\bfseries\thesubsection\enspace}
{1pt}
{\zihao{4}\bfseries\filright}

%% subsubsection
\titleformat{\subsubsection}
[hang]
{\sffamily}
{\zihao{-4}\bfseries\thesubsubsection\enspace}
{1pt}
{\zihao{-4}\bfseries\filright}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% boxes
%% 信息框
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[many]{tcolorbox}
\RequirePackage{fontawesome}

%% 带标题的文本框
\newtcolorbox{titledbox}[1]{%
  enhanced,
  arc=2pt,
  fonttitle=\sffamily\bfseries\centering,
  boxrule=.5pt,
  left=0pt, right=0pt, top=-10pt, bottom=0pt,
  boxsep=10pt,
  colframe=Black,
  colback=White,
  coltext=Black,
  colbacktitle=White,
  coltitle=Black,
  titlerule=0pt,
  title={#1},
  halign=left
}

%% Note 注意
\newtcolorbox{notebox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=0pt, right=0pt, top=-10pt, bottom=0pt,
  boxsep=10pt,
  colframe=Cyan,
  colback=Cyan!5!White,
  coltext=NavyBlue,
  colbacktitle=Cyan!5!White,
  coltitle=NavyBlue,
  titlerule=0pt,
  title={\faStickyNoteO\hspace{.5em}注意},
  fonttitle=\bfseries,
  halign=left
}

%% Important 重要
\newtcolorbox{importantbox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=0pt, right=0pt, top=-10pt, bottom=0pt,
  boxsep=10pt,
  colframe=YellowOrange,
  colback=YellowOrange!5!White,
  coltext=Orange,
  colbacktitle=YellowOrange!5!White,
  coltitle=Orange,
  titlerule=0pt,
  title={\faExclamationCircle\hspace{.5em}重要},
  fonttitle=\bfseries,
  halign=left
}

%% shellbox 命令行
\newtcolorbox{shellbox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=0pt, right=0pt, top=0pt, bottom=0pt,
  boxsep=10pt,
  colframe=black,
  colback=black,
  coltext=white,
  title={},
  fontupper=\small
}

%% shelloutputbox 命令输出
\newtcolorbox{shelloutputbox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=0pt, right=0pt, top=0pt, bottom=0pt,
  boxsep=10pt,
  colframe=black!50!white,
  colback=black!5!white,
  coltext=black,
  title={},
  fontupper=\small
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% head and foot
%% 页眉页脚
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\RequirePackage{zhnumber}

\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{.5pt}
\renewcommand\footrulewidth{0pt}
%\futurelet\TMPheadrule\def\headrule{{\color{violet}\TMPheadrule}}

\renewcommand{\sectionmark}[1]{\markright{#1}}

\fancyhead[L]{\rightmark}
\fancyhead[R]{\thepage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% code listings
%% 代码块设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{listings,verbatim}

\definecolor{codecolorkeywords}{rgb}{0,0,1}
\definecolor{codecolorcomments}{rgb}{0,0.5,0}
\definecolor{codecolorxmlcomments}{rgb}{0.5,0.5,0.5}
\definecolor{codecolorstrings}{rgb}{0.64,0.08,0.08}
\definecolor{codecolortypes}{rgb}{0.17,0.57,0.68}

\lstdefinelanguage{JavaScript}{
  keywords={do, if, in, for, let, new, try, var, case, else, enum, eval, null, this, true, void, with, await, break, catch, class, const, false, super, throw, while, yield, delete, export, import, public, return, static, switch, typeof, default, extends, finally, package, private, continue, debugger, function, arguments, interface, protected, implements, instanceof},
  sensitive=true,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]"
}

\lstdefinelanguage{TypeScript}{
  keywords={abstract, break, case, catch, class, const, continue, debugger, default, delete, do, else, enum, export, extends, false, finally, for, function, if, import, in, instanceof, new, null, return, super, switch, this, throw, true, try, typeof, var, void, while, with, as, implements, interface, let, package, private, protected, public, static, yield, any, boolean, constructor, declare, get, module, require, number, set, string, symbol, type, from, of},
  sensitive=true,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]"
}

\lstdefinelanguage{golang}{
  keywords={break, default, func, interface, select, case, defer, go, map, struct, chan, else, goto, package, switch, const, fallthrough, if, range, type, continue, for, import, return, var},
  sensitive=true,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]"
}

\lstdefinestyle{mystyle}{
  % Basic design
  basicstyle=\ttfamily\small,
  frame=tb,
  %framesep=5pt,
  framerule=.5pt,
  rulecolor=\color{violet},
  abovecaptionskip=0pt,
  belowcaptionskip=5pt,
  aboveskip=5pt,
  % Code design
  keywordstyle=\color{codecolorkeywords},
  commentstyle=\color{codecolorcomments},
  stringstyle=\color{codecolorstrings},
  numberstyle=\small\color{gray},
  breakatwhitespace=false,
  breaklines=true,
  captionpos=t,
  keepspaces=true,
  % Line numbers
  numbers=none,
  numbersep=10pt,
  %xleftmargin=.5em,
  stepnumber=1,
  firstnumber=1,
  numberfirstline=true,
  % Code
  tabsize=4,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  breaklines=true,
}
\lstset{style=mystyle}

%% 命令行
\lstdefinestyle{bashstyle}{
  backgroundcolor=\color{Cyan!10!white},
  numbers=none,
  numbersep=10pt,
  frame=l,
  framerule=2pt,
  rulecolor=\color{Cyan},
}

%% 命令行输出
\lstdefinestyle{bashoutstyle}{
  backgroundcolor=\color{YellowOrange!10!white},
  numbers=none,
  numbersep=10pt,
  frame=l,
  framerule=2pt,
  rulecolor=\color{YellowOrange},
}

%% 代码列表标题
\RequirePackage{caption}
\DeclareCaptionFormat{codecaptionformat}{%
  %%\colorbox{black!20}{
  %%  \parbox{\textwidth}{#1#2\ttfamily#3}
  %%}
  \parbox{\textwidth}{\faCode #1#2\hspace{.5em}#3}
}
\captionsetup[lstlisting]{format=codecaptionformat}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chinese names
%% 中文名称
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\abstractname}{摘要}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% global settings
%% 以下是全局格式设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 添加首行缩进，两个字符
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

%% 行距
\linespread{1.5}
