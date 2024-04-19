%let pgm=utl-python-scrape-web-page-source-and-save-to-local-file-like-view-source-but-programatically;

%stop_submission; /* in case you accidentally submit all the code below **/

python scrape web page source and save to local file like view source but programatically

The purpose of this repository is to minimize hitting a web pages over and over durring development.
Download page and parse on the desktop.
FYI: There is  free simple web page for some testing at 'example.com'

Related repos on end

github
https://tinyurl.com/3z9h962s
https://github.com/rogerjdeangelis/utl-python-scrape-web-page-source-and-save-to-local-file-like-view-source-but-programatically

845 San Franciso Companies in the Chaber of Commerce
https://tinyurl.com/22rp7k5h
https://raw.githubusercontent.com/rogerjdeangelis/utl-python-scrape-web-page-source-and-save-to-local-file-like-view-source-but-programatically/main/giv_sfCompanyList.csv

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/* Problem List Companies in San Franciso Chamber of Commerce Site                                                        */
/*                                                                                                                        */
/* BUSINESS    COMPANY                     STREET                           CITY             STATE     ZIP       PHONE    */
/*                                                                                                                        */
/*     1       QTV RENTAL                  222 ALAMEDA DE LAS PULGAS        REDWOOD CITY      CA      94062    3104350278 */
/*     2       Q &AMP; A CONSULTING LLC    ONE SANSOME ST FL 35 PMB 6023    SAN FRANCISCO     CA      94104    4155217552 */
/*     3       QATAR AIRWAYS               350 5TH AVE., SUITE 7630         NEW YORK          NY      10118    3109200722 */
/*     4       QUEEN ANNE HOTEL            1590 SUTTER STREET               SAN FRANCISCO     CA      94109    4154412828 */
/*                                                                                                                        */
/**************************************************************************************************************************/

You may need to install these for problematic dites (does not fix 400 type errors)

https://slproweb.com/products/Win32OpenSSL.html
I installed the light version

OpenSSL 1.1.1q  5 Jul 2022

You should also use the safer python context option
ssl._create_default_https_context = ssl._create_unverified_context


SOAPBOX ON

There are hundreds of sites with company data, some require parsing pdfs.

For problem sites you should be able to view source, select all cntl-c and
then hit a sas function key and have sas read the clipbord and
save

Maybe you do not need a commercial package at $1,000 a month to get
some company data?

Wiki
Chambers of Commerce
Secretay of States
Dept of Trans
Better Business Beaurea
Dept od Commerce
...
google 'list of US companies'
These requre authorization but you can cut and pase
https://www.sec.gov/edgar/searchedgar/companysearch
https://www.sec.gov/Archives/edgar/data/1048477/000195917324002921/xsl144X01/primary_doc.xml
Yelp
ZoomInfo
Yellow Pages

SOAPBOX OFF


/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  This creates the list                                                                                                 */
/*                                                                                                                        */
/*  %let lettersq=                                                                                                        */
/*   "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z";             */
/*                                                                                                                        */
/*  data _null_;                                                                                                          */
/*    do ltr=&lettersq;                                                                                                   */
/*      url= cats("url=","'https://business.sfchamber.com/list/searchalpha/",ltr,"'");                                    */
/*      put url;                                                                                                          */
/*      file_path = cats('file_path ="d:/giv/htm/giv_sfchamber',ltr,'.html"');                                            */
/*      put file_path;                                                                                                    */
/*      put 'save_html_to_file(url, file_path)' /;                                                                        */
/*    end;                                                                                                                */
/*  run;quit;                                                                                                             */
/*                                                                                                                        */
/*  It also looks like there are many pages out ther that use the                                                         */
/*  ticker symol to separate pages or sections of pages.                                                                  */
/*                                                                                                                        */
/*  San Framcisco Chamber of Commerce Pages with lists of Companes by first letter of company name                        */
/*                                                                                                                        */
/*  https://business.sfchamber.com/list/searchalpha/a                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/b                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/c                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/d                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/e                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/f                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/g                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/h                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/i                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/j                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/k                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/l                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/m                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/n                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/o                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/p                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/q                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/r                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/s                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/t                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/u                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/v                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/w                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/x                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/y                                                                     */
/*  https://business.sfchamber.com/list/searchalpha/z                                                                     */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

* copy each page hrml source to a local file on your desktop;
* example for companies that begin with q;

%utl_pybegin;
parmcards4;
import urllib.request
import ssl
ssl._create_default_https_context = ssl._create_unverified_context
def save_html_to_file(url, file_path):
    try:
        with urllib.request.urlopen(url) as response:
            html_content = response.read()
        with open(file_path, 'wb') as file:
            file.write(html_content)
        print(f"HTML source saved to: {file_path}")
    except urllib.error.URLError as e:
        print(f"Error occurred: {e}")

url='https://business.sfchamber.com/list/searchalpha/a'
file_path ="d:/giv/htm/giv_sfchambera.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/b'
file_path ="d:/giv/htm/giv_sfchamberb.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/c'
file_path ="d:/giv/htm/giv_sfchamberc.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/d'
file_path ="d:/giv/htm/giv_sfchamberd.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/e'
file_path ="d:/giv/htm/giv_sfchambere.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/f'
file_path ="d:/giv/htm/giv_sfchamberf.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/g'
file_path ="d:/giv/htm/giv_sfchamberg.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/h'
file_path ="d:/giv/htm/giv_sfchamberh.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/i'
file_path ="d:/giv/htm/giv_sfchamberi.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/j'
file_path ="d:/giv/htm/giv_sfchamberj.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/k'
file_path ="d:/giv/htm/giv_sfchamberk.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/l'
file_path ="d:/giv/htm/giv_sfchamberl.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/m'
file_path ="d:/giv/htm/giv_sfchamberm.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/n'
file_path ="d:/giv/htm/giv_sfchambern.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/o'
file_path ="d:/giv/htm/giv_sfchambero.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/p'
file_path ="d:/giv/htm/giv_sfchamberp.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/q'
file_path ="d:/giv/htm/giv_sfchamberq.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/r'
file_path ="d:/giv/htm/giv_sfchamberr.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/s'
file_path ="d:/giv/htm/giv_sfchambers.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/t'
file_path ="d:/giv/htm/giv_sfchambert.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/u'
file_path ="d:/giv/htm/giv_sfchamberu.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/v'
file_path ="d:/giv/htm/giv_sfchamberv.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/w'
file_path ="d:/giv/htm/giv_sfchamberw.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/x'
file_path ="d:/giv/htm/giv_sfchamberx.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/y'
file_path ="d:/giv/htm/giv_sfchambery.html"
save_html_to_file(url, file_path)

url='https://business.sfchamber.com/list/searchalpha/z'
file_path ="d:/giv/htm/giv_sfchamberz.html"
save_html_to_file(url, file_path)
;;;;
%utl_pyend;

/*                _     _             _   _
| | _____ _   _  | |__ | |_ _ __ ___ | | | |_ __ _  __ _ ___
| |/ / _ \ | | | | `_ \| __| `_ ` _ \| | | __/ _` |/ _` / __|
|   <  __/ |_| | | | | | |_| | | | | | | | || (_| | (_| \__ \
|_|\_\___|\__, | |_| |_|\__|_| |_| |_|_|  \__\__,_|\__, |___/
          |___/                                    |___/
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/* d:/giv/htm/giv_sfchamberq.html (There will be 26 of these)                                                             */
/*                                                                                                                        */
/* <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/QTV-RENTAL-115985" ALT="QTV RENTAL">QTV RENTAL</A>                 */
/* <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">222 ALAMEDA DE LAS PULGAS</SPAN>                              */
/* <SPAN CLASS="GZ-ADDRESS-CITY">REDWOOD CITY</SPAN>                                                                      */
/* <SPAN>94062</SPAN>                                                                                                     */
/* <A HREF="TEL:3104350278" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(310) 435-0278</SPAN></A>           */
/*                                                                                                                        */
/* <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/Q-A-CONSULTING-LLC-SAN-FRANCISCO-115710" ALT="QCONSUL">QCONSUL</A  */
/* <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">ONE SANSOME ST FL 35 PMB 6023</SPAN>                          */
/* <SPAN CLASS="GZ-ADDRESS-CITY">SAN FRANCISCO</SPAN>                                                                     */
/* <SPAN>94104</SPAN>                                                                                                     */
/* <A HREF="TEL:4155217552" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(415) 521-7552</SPAN></A>           */
/*                                                                                                                        */
/* <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/QATAR-AIRWAYS-104422" ALT="QATAR AIRWAYS">QATAR AIRWAYS</A>        */
/* <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">350 5TH AVE., SUITE 7630</SPAN>                               */
/* <SPAN CLASS="GZ-ADDRESS-CITY">NEW YORK</SPAN>                                                                          */
/* <A HREF="TEL:3109200722" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(310) 920-0722</SPAN></A>           */
/*                                                                                                                        */
/* <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/QUEEN-ANNE-HOTEL-414" ALT="QUEEN ANNE HOTEL">QUEEN ANNE HOTEL</A>  */
/* <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">1590 SUTTER STREET</SPAN>                                     */
/* <SPAN CLASS="GZ-ADDRESS-CITY">SAN FRANCISCO</SPAN>                                                                     */
/* <SPAN>94109</SPAN>                                                                                                     */
/* <A HREF="TEL:4154412828" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(415) 441-2828</SPAN></A>           */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
 _ __   __ _ _ __ ___  ___
| `_ \ / _` | `__/ __|/ _ \
| |_) | (_| | |  \__ \  __/
| .__/ \__,_|_|  |___/\___|
|_|
*/

* convert html source to sas table;

%macro sfalpha(ltr);

data giv_alpha_&ltr;
  retain business 0 col;
  infile "d:/giv/htm/giv_sfchamber&ltr..html";
  input;
  lyn=strip(upcase(left(_infile_)));
  select;
     when ( lyn =: cats('<A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/',"&ltr") and substr(lyn,length(lyn)-3)='</A>') do;
        business=business + 1;
        col='COMPANY';
        output;
     end;
     when ( index(lyn,'GZ-STREET-ADDRESS') > 0 and index(lyn,'ITEMPROP') > 0 ) do;col='STREET';output;end; /* street */
     when ( index(lyn,'CITYSTATEZIP')   > 0    ) do;
        input;lyn=upcase(left(_infile_));        do;col='CITY';  output;end; /* city */
        input;lyn=upcase(left(_infile_));        do;col='STATE'; output;end; /* state */
        input;lyn=upcase(left(_infile_));        do;col='ZIP';   output;end; /* zip */
        end;
     when ( index(lyn,'GZ-FA-PHONE')>0)          do;col='PHONE'; output;end; /* phone */
     otherwise delete;
  end;
run;quit;
%mend sfalpha;

options nonotes;
%sfalpha(A);
%sfalpha(B);
%sfalpha(C);
%sfalpha(D);
%sfalpha(E);
%sfalpha(F);
%sfalpha(G);
%sfalpha(H);
%sfalpha(I);
%sfalpha(J);
%sfalpha(K);
%sfalpha(L);
%sfalpha(M);
%sfalpha(N);
%sfalpha(O);
%sfalpha(P);
%sfalpha(Q);
%sfalpha(R);
%sfalpha(S);
%sfalpha(T);
%sfalpha(U);
%sfalpha(V);
%sfalpha(W);
%sfalpha(X);
%sfalpha(Y);
%sfalpha(Z);
options notes;

*/ /**************************************************************************************************************************/
*/ /*                                                                                                                        */
*/ /* GIV_PASS1 total obs=24                                                                                                 */
*/ /*                                                                                                                        */
*/ /* BUSINESS    COL         LYN                                                                                            */
*/ /*                                                                                                                        */
*/ /*     1       COMPANY     <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/QTV-RENTAL-115985" ALT="QTV RENTAL">...    */
*/ /*     1       STREET      <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">222 ALAMEDA DE LAS PULGAS</SPAN...    */
*/ /*     1       CITY        <SPAN CLASS="GZ-ADDRESS-CITY">REDWOOD CITY</SPAN>                                              */
*/ /*     1       STATE       <SPAN>CA</SPAN>...                                                                             */
*/ /*     1       ZIP         <SPAN>94062</SPAN>...                                                                          */
*/ /*     1       PHONE       <A HREF="TEL:3104350278" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(310)...    */
*/ /*     2       COMPANY     <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/Q-A-CONSULTING-LLC-SAN-FRANCISCO-115...    */
*/ /*     2       STREET      <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">ONE SANSOME ST FL 35 PMB 6023</...    */
*/ /*     2       CITY        <SPAN CLASS="GZ-ADDRESS-CITY">SAN FRANCISCO</SPAN>                                             */
*/ /*     2       STATE       <SPAN>CA</SPAN>                                                                                */
*/ /*     2       ZIP         <SPAN>94104</SPAN>                                                                             */
*/ /*     2       PHONE       <A HREF="TEL:4155217552" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(415)...    */
*/ /*     3       COMPANY     <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/QATAR-AIRWAYS-104422" ALT="QATAR AIR...    */
*/ /*     3       STREET      <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">350 5TH AVE., SUITE 7630</SPAN>...    */
*/ /*     3       CITY        <SPAN CLASS="GZ-ADDRESS-CITY">NEW YORK</SPAN>                                                  */
*/ /*     3       STATE       <SPAN>NY</SPAN>                                                                                */
*/ /*     3       ZIP         <SPAN>10118</SPAN>                                                                             */
*/ /*     3       PHONE       <A HREF="TEL:3109200722" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(310)...    */
*/ /*     4       COMPANY     <A HREF="HTTPS://BUSINESS.SFCHAMBER.COM/LIST/MEMBER/QUEEN-ANNE-HOTEL-414" ALT="QUEEN ANN...    */
*/ /*     4       STREET      <SPAN CLASS="GZ-STREET-ADDRESS" ITEMPROP="STREETADDRESS">1590 SUTTER STREET</SPAN>             */
*/ /*     4       CITY        <SPAN CLASS="GZ-ADDRESS-CITY">SAN FRANCISCO</SPAN>                                             */
*/ /*     4       STATE       <SPAN>CA</SPAN>                                                                                */
*/ /*     4       ZIP         <SPAN>94109</SPAN>                                                                             */
*/ /*     4       PHONE       <A HREF="TEL:4154412828" CLASS="CARD-LINK"><I CLASS="GZ-FAL GZ-FA-PHONE"></I><SPAN>(415)...    */
*/ /*                                                                                                                        */
*/ /**************************************************************************************************************************/

/*   _                                       _ _
  __| | ___ _ __   ___  _ __ _ __ ___   __ _| (_)_______
 / _` |/ _ \ `_ \ / _ \| `__| `_ ` _ \ / _` | | |_  / _ \
| (_| |  __/ | | | (_) | |  | | | | | | (_| | | |/ /  __/
 \__,_|\___|_| |_|\___/|_|  |_| |_| |_|\__,_|_|_/___\___|

*/


data giv_prexpo;
  length
    var $32
    val $200
    company $200;
  retain company "";
  set giv_alpha_:;
  select (col);
    when ("COMPANY") do; var='COMPANY'; val= scan(substr(lyn,index(lyn,"ALT=")),2,'"');company=val; end;
    when ("STREET" ) do; var='STREET '; val= scan(lyn,2,'<>'); end;
    when ("CITY"   ) do; var='CITY   '; val= scan(lyn,2,'<>'); end;
    when ("STATE"  ) do; var='STATE  '; val= scan(lyn,2,'<>'); end;
    when ("ZIP"    ) do; var='ZIP    '; val= scan(lyn,2,'<>'); end;
    when ("PHONE"  ) do; var='PHONE  '; val= scan(lyn,3,':"'); end;
    otherwise;
  end;
  drop lyn;
run;quit;

proc sort data=giv_prexpo out=giv_prexposrt equals nodupkey;
by company col;
run;quit;

/*----                                                                   ----*/
/*---- pivot long to fat                                                 ----*/
/*----                                                                   ----*/

proc transpose data=giv_prexposrt out=giv_sfCompanyList(drop=_name_ business);
by business company notsorted;
id var;
var val;
run;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/* WORK.giv_prexpofin (all fields are not filled out in the San Francisco Chamber of Commerce                             */
/*                                                                                                                        */
/*  COMPANY                     STREET                             CITY               PHONE       STATE      ZIP          */
/*                                                                                                                        */
/*  QTV RENTAL                  222 ALAMEDA DE LAS PULGAS          REDWOOD CITY     3104350278     CA        94062        */
/*  Q &AMP; A CONSULTING LLC    ONE SANSOME ST FL 35 PMB 6023      SAN FRANCISCO    4155217552     CA        94104        */
/*  QATAR AIRWAYS               350 5TH AVE., SUITE 7630           NEW YORK         3109200722     NY        10118        */
/*  QUEEN ANNE HOTEL            1590 SUTTER STREET                 SAN FRANCISCO    4154412828     CA        94109        */
/*                                                                                                                        */
/*                                                                                                                        */
/*  A BIGGER ROOM LLC           612 MASONIC AVENUE                 SAN FRANCISCO    4154843548     CA        94117        */
/*  A. MACIEL PRINTING          50 MENDELL ST., UNIT 5             SAN FRANCISCO    4156483553     CA        94124        */
/*  A.M. JANITORIAL                                                DALY CITY        6503605116     CA        94014        */
/*  A.S.F. ELECTRIC INC.        76 HILL ST.                        DALY CITY        6507559032     CA        94014        */
/*  ABC7                        900 FRONT ST.                      SAN FRANCISCO    4159547777     CA        94111        */
/*  ACADIA REALTY TRUST         411 THEODORE FREMD AVE., STE. 300  RYE              9142883379     NY        10580        */
/*  ACCENTURE                   415 MISSION ST., STE. 3300         SAN FRANCISCO    4155375000     CA        94105        */
/*  ACE MAILING CORPORATION     2736 16TH ST.                      SAN FRANCISCO    4158634223     CA        94103        */
/*  ADVANCED ETIQUETTE                                             SAN ANSELMO      4153463665     CA                     */
/*  AECOM HUNT                  300 CALIFORNIA ST., 6TH FLR.       SAN FRANCISCO    4153913930     CA        94104        */
/*                                                                                                                        */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*----                                                                   ----*/
/*---- create comma delimited file                                       ----*/
/*----                                                                   ----*/

dm 'dexport work.giv_sfCompanyList "d:/giv/csv/giv_sfCompanyList.csv"';

dm 'dimport  "d:/giv/csv/giv_sfCompanyList.csv" work.check';

/*
 _ __ ___ _ __   ___  ___
| `__/ _ \ `_ \ / _ \/ __|
| | |  __/ |_) | (_) \__ \
|_|  \___| .__/ \___/|___/
         |_|
*/

REPO
----------------------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-locating-the-html-node-and-web-scrape-the-html-table
https://github.com/rogerjdeangelis/utl-web-scaping-Loop-over-many-URLs-scrape-parse-extract-nodes-and-put-into-a-sas-table
https://github.com/rogerjdeangelis/utl_scrape_javascript_converting_table_to_sas_dataset_no_browser
https://github.com/rogerjdeangelis/utl_web_scrape_23_separate_pages_one_per_state_for_all_whole_food_store_addresses

https://github.com/rogerjdeangelis/utl_digitize_data_from_image

https://github.com/rogerjdeangelis/utl-scraping-server-screens-when-Copy-Print-PageSource-are-disabled-python-tesseract
With just one sinple command line python 'scr1' read the screen convert to text and save in d:/txt/scr1.txt
Opent next scree and type scr2 and next screen saveds

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
