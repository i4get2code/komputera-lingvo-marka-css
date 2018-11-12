# S means source

# exec your command from whatever place
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

D="marka-md"

if [ ! -d ../gits/$D.git ]; then
    git init --bare ../gits/$D.git
else
    echo $D.git" already created"
fi
