bold=`tput bold`
normal=`tput sgr0`

echo -e "${bold}NAME${normal}"
echo -e "\tlm_post_production.sh\n"

echo -e "${bold}SYNOPSIS${normal}"
echo -e "\tlm_post_production.sh --help | --dryrun | --convert | --xml\n"

echo -e "${bold}DESCRIPTION${normal}"
echo -e "\tPut this script in your own folder in '1_export'. It converts 
\t'.txt' into '.html' files, logs error messages in 'error.log'.
\tAnd it can generates XML files.\n"

echo -e "\tIts submodules in 'modules/' remove unwanted 
\tartefacts. For every article the script displays the converted
\t'.html' file in Firefox (-d). If that looks alright the script
\twill extract all listings and move the whole 
\tfolder including the listings to '2_checked' (-c).
\tFinally it generates XML files and repairs some details in those (-x).\n"

echo -e "${bold}OPTIONS${normal}"
echo -e "\t-h / --help"
echo -e "\t\tDisplay this help.\n"
echo -e "\t-d / --dryrun"
echo -e "\t\tStarts a testrun that only collects 'sf'-errors in 'error.log'\n"
echo -e "\t-c / --convert"
echo -e "\t\tRun this script and convert files.\n"
echo -e "\t-x / --xml"
echo -e "\t\tConverts HTML to XML files. Shows errors and prepares XML for upload.\n"

echo -e "${bold}AUTHOR${normal}"
echo -e "\tWritten by Kristian Kißling\n"

echo -e "${bold}REPORTING BUGS${normal}"
echo -e "\tBug Reports to kkissling@linux-magazin.de\n"

echo -e "${bold}COPYRIGHT${normal}"
echo -e "\tLicense: GNU Public License v2."
echo -e "\tThis is free software: you are free  to  change  and  redistribute  it.
\tThere is NO WARRANTY, to the extent permitted by law."
