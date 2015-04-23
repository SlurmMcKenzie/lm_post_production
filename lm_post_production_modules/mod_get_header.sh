bold=`tput bold`
normal=`tput sgr0`

echo -e "${bold}NAME${normal}"
echo -e "\tpost_production.sh\n"

echo -e "${bold}SYNOPSIS${normal}"
echo -e "\tpost_production.sh --help | --dryrun | --convert\n"

echo -e "${bold}DESCRIPTION${normal}"
echo -e "\tPut this script in your own folder in '1_export'. It converts 
\t'.txt' into '.html' files and logs error messages in 
\t'error.log'.\n"

echo -e "\tBefore that, its submodules in 'modules/' remove unwanted 
\tartefacts. Then it displays the converted '.html' 
\tfile in Firefox. If that looks alright this script
\twill extract all listings and move the whole 
\tfolder including the listings to '2_checked'.\n"

echo -e "${bold}OPTIONS${normal}"
echo -e "\t-h / --help"
echo -e "\t\tDisplay this help.\n"
echo -e "\t-c / --convert"
echo -e "\t\tRun this script.\n"
echo -e "\t-d / --dryrun"
echo -e "\t\tStarts a testrun that only collects 'sf'-errors in 'error.log'\n"

echo -e "${bold}AUTHOR${normal}"
echo -e "\tWritten by Kristian Kißling\n"

echo -e "${bold}REPORTING BUGS${normal}"
echo -e "\tBug Reports to kkissling@linux-magazin.de\n"

echo -e "${bold}COPYRIGHT${normal}"
echo -e "\tLicense: GNU Public License v2."
echo -e "\tThis is free software: you are free  to  change  and  redistribute  it.
\tThere is NO WARRANTY, to the extent permitted by law."
