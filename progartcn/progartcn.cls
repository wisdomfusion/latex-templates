%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% progartcn - Yet Another LaTeX Template for Programming or Technical Articles or Tutorials
%% WisdomFusion@gmail.com
%% July, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{progartcn}[July, 2018 Yet Another LaTeX Template for Technical Articles or Tutorials]
\LoadClass[a4paper]{ctexart}

\RequirePackage{xunicode}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% colors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[dvipsnames]{xcolor}

% primary
\definecolor{colorPrimary}{HTML}{007bff}
\definecolor{colorPrimaryBorder}{HTML}{b8daff}
\definecolor{colorPrimaryBackground}{HTML}{cce5ff}
\definecolor{colorPrimaryText}{HTML}{004085}

% secondary
\definecolor{colorSecondary}{HTML}{6c757d}
\definecolor{colorSecondaryBorder}{HTML}{d6d8db}
\definecolor{colorSecondaryBackground}{HTML}{e2e3e5}
\definecolor{colorSecondaryText}{HTML}{383d41}

% success
\definecolor{colorSuccess}{HTML}{28a745}
\definecolor{colorSuccessBorder}{HTML}{c3e6cb}
\definecolor{colorSuccessBackground}{HTML}{d4edda}
\definecolor{colorSuccessText}{HTML}{155724}

% info
\definecolor{colorInfo}{HTML}{17a2b8}
\definecolor{colorInfoBorder}{HTML}{bee5eb}
\definecolor{colorInfoBackground}{HTML}{d1ecf1}
\definecolor{colorInfoText}{HTML}{0c5460}

% danger
\definecolor{colorDanger}{HTML}{dc3545}
\definecolor{colorDangerBorder}{HTML}{f5c6cb}
\definecolor{colorDangerBackground}{HTML}{f8d7da}
\definecolor{colorDangerText}{HTML}{721c24}

% warning
\definecolor{colorWarning}{HTML}{ffc107}
\definecolor{colorWarningBorder}{HTML}{ffeeba}
\definecolor{colorWarningBackground}{HTML}{fff3cd}
\definecolor{colorWarningText}{HTML}{856404}

% light
\definecolor{colorLight}{HTML}{f8f9fa}
\definecolor{colorLightBorder}{HTML}{fdfdfe}
\definecolor{colorLightBackground}{HTML}{fefefe}
\definecolor{colorLightText}{HTML}{818182}

% dark
\definecolor{colorDark}{HTML}{343a40}
\definecolor{colorDarkBorder}{HTML}{c6c8ca}
\definecolor{colorDarkBackground}{HTML}{d6d8d9}
\definecolor{colorDarkText}{HTML}{1b1e21}


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

\RequirePackage[open,openlevel=0,atend]{bookmark}

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
%\punctstyle{kaiming}

\setmainfont{Minion Pro}
\setsansfont{Myriad Pro}
\setmonofont{Courier Std}

\setCJKmainfont[BoldFont={方正小标宋_GBK}, ItalicFont={方正楷体_GBK}, BoldItalicFont={方正仿宋_GBK}]{方正书宋_GBK}
\setCJKsansfont{方正黑体_GBK}
\setCJKmonofont{方正中等线_GBK}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

\setCJKfamilyfont{fzss}{方正书宋_GBK}
\newcommand{\fzss}{\CJKfamily{fzss}}

\setCJKfamilyfont{fzxbs}{方正小标宋_GBK}
\newcommand{\fzxbs}{\CJKfamily{fzxbs}}

\setCJKfamilyfont{fzhei}{方正黑体_GBK}
\newcommand{\fzhei}{\CJKfamily{fzhei}}

\setCJKfamilyfont{fzkai}{方正楷体_GBK}
\newcommand{\fzkai}{\CJKfamily{fzkai}}

\setCJKfamilyfont{fzfs}{方正仿宋_GBK}
\newcommand{\fzfs}{\CJKfamily{fzfs}}

\setCJKfamilyfont{fzzdx}{方正中等线_GBK}
\newcommand{\fzzdx}{\CJKfamily{fzzdx}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% titlesec
%% 标题设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\RequirePackage{zhnumber}


%% \renewcommand\abstractname{Summary}
\renewenvironment{abstract}{\noindent\rule{\textwidth}{.5pt}\\[2ex] \centering\begin{minipage}{.97\textwidth}{\zihao{-4}\sffamily\bfseries\abstractname}\\}
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
\newtcolorbox{titledBox}[1]{%
  tikznode boxed title,
  enhanced,
  arc=3pt,
  interior style={white},
  attach boxed title to top center = {yshift=-\tcboxedtitleheight/2},
  fonttitle=\normalfont,
  colbacktitle=white,coltitle=black,
  boxed title style={size=normal,colframe=white,boxrule=0pt},
  boxrule=.5pt,
  left=5pt, right=5pt, top=5pt, bottom=0pt,
  boxsep=5pt,
  title={#1},
  halign=left,
  fontupper=\fzkai
}


%% Note
\newtcolorbox{noteBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorInfoBorder,
  colback=colorInfoBackground,
  colbacktitle=colorInfoBackground,
  coltext=colorInfoText,
  title={\textcolor{colorInfoText}{\faStickyNoteO\hspace{.5em}\bfseries{\textsc{Note}}}},
  titlerule=0pt,
  halign=left,
  fontupper=\fzkai
}

%% Important
\newtcolorbox{importantBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorWarningBorder,
  colback=colorWarningBackground,
  colbacktitle=colorWarningBackground,
  coltext=colorWarningText,
  title={\textcolor{colorWarningText}{\faExclamationCircle\hspace{.5em}\bfseries{\textsc{Important}}}},
  titlerule=0pt,
  halign=left,
  fontupper=\fzkai
}

%% Tip
\newtcolorbox{tipBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorSuccessBorder,
  colback=colorSuccessBackground,
  colbacktitle=colorSuccessBackground,
  coltext=colorSuccessText,
  title={\textcolor{colorSuccessText}{\faCheckCircle\hspace{.5em}\bfseries{\textsc{Tip}}}},
  titlerule=0pt,
  halign=left,
  fontupper=\fzkai
}

%% Warning
\newtcolorbox{warningBox}{%
  enhanced,
  arc=2pt,
  boxrule=.5pt,
  left=5pt, right=5pt, top=0pt, bottom=0pt,
  boxsep=5pt,
  colframe=colorDangerBorder,
  colback=colorDangerBackground,
  colbacktitle=colorDangerBackground,
  coltext=colorDangerText,
  title={\textcolor{colorDangerText}{\faExclamationTriangle\hspace{.5em}\bfseries{\textsc{Warning}}}},
  titlerule=0pt,
  halign=left,
  fontupper=\fzkai
}


%% verbatim 环境无法直接在新环境中使用
%% 换用 \VerbatimEnvironment \begin{Verbatim}
\RequirePackage{fancyvrb}

%% 命令行
\newenvironment{shellBox}
{%
  \VerbatimEnvironment
  \begin{tcolorbox}[
    enhanced,
    arc=2pt,
    boxrule=.5pt,
    left=5pt, right=5pt, top=0pt, bottom=0pt,
    boxsep=5pt,
    colframe=colorSecondaryBorder,
    colback=colorSecondaryBackground,
    coltext=colorSecondaryText,
    title={},
    fontupper=\linespread{1.2}
  ]%
    \begin{Verbatim}
}
{%
    \end{Verbatim}
  \end{tcolorbox}
}

%% 命令行
\newenvironment{invertedShellBox}
{%
  \VerbatimEnvironment
  \begin{tcolorbox}[
    enhanced,
    arc=2pt,
    boxrule=.5pt,
    left=5pt, right=5pt, top=0pt, bottom=0pt,
    boxsep=5pt,
    colframe=colorSecondary,
    colback=colorSecondary,
    coltext=white,
    title={},
    fontupper=\linespread{1.2}
  ]%
    \begin{Verbatim}
}
{%
    \end{Verbatim}
  \end{tcolorbox}
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

\fancyhead[L]{\fzkai{\rightmark}}
\fancyhead[R]{\thepage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% code listings
%% 代码块设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{listings,verbatim}

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
  basicstyle=\linespread{1.2}\ttfamily,
  frame=tb,
  framesep=5pt,
  framerule=.5pt,
  framexleftmargin=10pt,
  rulecolor=\color{black},
  abovecaptionskip=0pt,
  belowcaptionskip=5pt,
  aboveskip=5pt,
  backgroundcolor=\color{black!5!white},
  % Code design
  keywordstyle=\color{colorPrimary},
  commentstyle=\color{colorSuccess},
  stringstyle=\color{colorSecondary},
  numberstyle=\small\color{gray},
  breakatwhitespace=false,
  breaklines=true,
  captionpos=t,
  keepspaces=true,
  % Line numbers
  numbers=none,
  numbersep=15pt,
  xleftmargin=10pt,
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
\lstdefinestyle{bashInputStyle}{
  backgroundcolor=\color{colorInfoBackground},
  basicstyle=\linespread{1.2}\ttfamily\color{colorDark},
  keepspaces=true,
  numbers=none,
  numbersep=10pt,
  frame=l,
  framerule=2pt,
  framesep=5pt,
  framexleftmargin=3pt,
  framextopmargin=-5pt,
  xleftmargin=10pt,
  rulecolor=\color{colorInfo},
  % Code
  tabsize=4,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  breaklines=true,
}

%% 命令行输出
\lstdefinestyle{bashOutputStyle}{
  backgroundcolor=\color{black!5!white},
  basicstyle=\linespread{1.2}\ttfamily\color{colorDark},
  keepspaces=true,
  numbers=none,
  numbersep=10pt,
  frame=l,
  framerule=2pt,
  framesep=5pt,
  framexleftmargin=3pt,
  framextopmargin=-5pt,
  xleftmargin=10pt,
  rulecolor=\color{colorSecondary},
  % Code
  tabsize=4,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  breaklines=true,
}

%% 代码列表标题
\RequirePackage{caption}
\DeclareCaptionFormat{codecaptionformat}{%
  %%\colorbox{black!20}{
  %%  \parbox{\textwidth}{#1#2\ttfamily#3}
  %%}
  \parbox{\textwidth}{\textcolor{violet}\faCode~\textcolor{violet}{#1#2}\hspace{.5em}\fzkai #3}
}
\captionsetup[lstlisting]{format=codecaptionformat}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chinese names
%% 中文名称
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\lstlistingname}{CODE}
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

%% captions
\RequirePackage[singlelinecheck=false]{caption}
\DeclareCaptionFont{kai}{\fzkai}
\captionsetup[table]{belowskip=0pt,aboveskip=5pt,labelfont=kai,textfont=kai}
\captionsetup[figure]{belowskip=0pt,aboveskip=5pt,format=hang,labelfont=kai,textfont=kai}
