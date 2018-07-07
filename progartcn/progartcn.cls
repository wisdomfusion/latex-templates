%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% progartcn - Yet Another LaTeX Template for Programming or Technical Articles or Tutorials
%% WisdomFusion@gmail.com
%% July, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{progartcn}[July, 2018 Yet Another LaTeX Template for Programming or Technical Articles or Tutorials]
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

\setmainfont[Ligatures=TeX]{Minion Pro}
\setsansfont{Myriad Pro}
\setmonofont{Courier Std}

\setCJKmainfont[BoldFont={方正小标宋_GBK}, ItalicFont={方正楷体_GBK}, BoldItalicFont={方正仿宋_GBK}]{方正书宋_GBK}
\setCJKsansfont{方正黑体_GBK}
\setCJKmonofont{方正中等线_GBK}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

\newfontfamily\fzss{方正书宋_GBK}
\newfontfamily\fzxbs{方正小标宋_GBK}
\newfontfamily\fzhei{方正黑体_GBK}
\newfontfamily\fzkai{方正楷体_GBK}
\newfontfamily\fzfs{方正仿宋_GBK}
\newfontfamily\fzzdx{方正中等线_GBK}

\newfontfamily\garamond{Adobe Garamond Pro}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% global settings
%% 以下是全局格式设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 添加首行缩进，两个字符
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

%% 行距
\linespread{1.5}

