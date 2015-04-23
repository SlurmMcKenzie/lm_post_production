# write sf stderr and stdout in error.log
echo -e "## Start of error.log for:" ${folder} "##\n" >> ../error.log
sf -H article.txt article.html >> ../error.log 2>&1 && 
echo -e "\n## End of error.log for:" ${folder} "##\n" >> ../error.log

# TODO: HTML im Browser anschauen
while true
    do
        echo -e ${folder}:
        echo -e "================================"
        read -p "Do you want to check the generated HTML file in a browser now? [y/n]" firefox
        case ${firefox} in
            y) 
                echo -e "Firefox ist starting right now, please check the 'article.html'."
                firefox --safe-mode ./article.html 2>&1
                break
                ;;
            *)
                break
                ;;
        esac
    done
