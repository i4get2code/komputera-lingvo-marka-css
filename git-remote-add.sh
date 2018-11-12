# S means source

# exec your command from whatever place
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

git remote add on ../gits/marka-md.git
git remote add off ../gits/marka-md.git

git remote set-url --push off https://github.com/i4get2code/marka-md.git
git remote set-url --add --push off ../gits/marka-md.git

git remote set-url on https://github.com/i4get2code/marka-md.git
git remote set-url --push on ../gits/marka-md.git
git remote set-url --add --push on https://github.com/i4get2code/marka-md.git

git remote -v
