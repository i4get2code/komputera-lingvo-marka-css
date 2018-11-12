# S means source

# exec your command from whatever place
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

D="marka-md"

git remote add on ../gits/$D.git
git remote add off ../gits/$D.git

git remote set-url --push off https://github.com/i4get2code/$D.git
git remote set-url --add --push off ../gits/$D.git

git remote set-url on https://github.com/i4get2code/$D.git
git remote set-url --push on ../gits/$D.git
git remote set-url --add --push on https://github.com/i4get2code/$D.git

git remote -v
