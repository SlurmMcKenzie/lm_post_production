# remove "Heft-DVD"-Box if there is one
                KT=$(grep -n -e "^@KT:Inhalt" article.txt | cut -d ":" -f1)
                KE=$(grep -n -e "^@KE" article.txt | cut -d ":" -f1)
                if [ $KT ]; then
                    for i in $KE; do
                        if [ $i -gt $KT ]; then
                            KE=$i
                            echo -e "\n8<----------"
                            sed $KT,$KE'!d' article.txt | tr "[:space:]" " "
                            echo -e "\n---------->8\n"
                            while true
                                do
                                    read -p "Found useless 'Inhalt' box. Delete? [y/n]" delete
                                    case ${delete} in
                                        y)
                                            sed $KT,$KE'd' article.txt > article_neu.txt
                                            mv article_neu.txt article.txt
                                            echo "Box deleted."
                                            break
                                    ;;
                                        n)
                                            echo "Box not changed."
                                            break
                                    ;;
                                        *)
                                            echo "Please type only [y] or [n]."
                                    esac
                                done
                        fi
                    done
                fi
