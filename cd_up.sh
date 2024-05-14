
#This script needs to be added to ~/.bashrc to function properly.
function up(){
    num=$1;
    dir=$PWD;

    for(i=1;i<=num;i++);
    do
        dir="$dir/..";
    done;
    cd "$dir";
}
