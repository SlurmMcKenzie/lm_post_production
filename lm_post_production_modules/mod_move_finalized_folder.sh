# check if "2_checked" is already there...
if [ -d ${target_folder} ]; then
    #...if so, move all folders there
    mv -i ${folder} ${target_folder}
    echo "Move folder to" ${target_folder}
    echo "****\n"
else
    #...if not, mkdir folder
    echo ${target_folder} "doesn't exist yet."
    # TODO: Folder anlegen: mkdir ../../2_checked
fi
