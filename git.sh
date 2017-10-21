remote(){
    clear;
    echo "Working on $project .";
    echo "List of remote you have";
        git remote -v;
    echo "add / remove / end";
    read input;
    if [ "$input" == "add" ]; then
        echo "Enter your repository url.git";
        read url;
        git remote add $project $url;
    fi
}
menu(){
    clear;
    echo "Working on $project .";
    echo "What do you want to do?";
    echo " 1) remote ";
    echo " 2) status ";
    echo " 3) log    ";
    echo "Enter number:"
    read ans;
    if [ "$ans" -eq 1 ]; then
        git remote -v;
    elif [ "$ans" -eq 2 ]; then
        git log --all --decorate --oneline --graph --pretty;
    elif [ "$ans" -eq 3 ]; then
        git status
    fi
    read temp
    menu;
    ฆวยไร
}

echo "Welcome! EzGIT";
echo "select project name or enter \"NEW\" for new project";
ls -d -c */
read project;
if [ "$project" = "NEW" ]; then
    echo "Enter project name";
    read project;
    mkdir $project;
    cd $project;
    git init;
    cd ../
fi
cd $project;
clear;
menu;
#git init
#git check out
#git commit -m "$text"
#add commit after commit
#git commit --amend
#git stash ==> Create temp before push or pull
#git stash apply ==> apply thing u stash
#CONFLICT >
