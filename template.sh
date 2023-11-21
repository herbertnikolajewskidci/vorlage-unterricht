new_text=$(basename `git rev-parse --show-toplevel`)
sed -i "s/\[Datum\]\-\[Thema\]/$new_text/g" README.md
sed -i "s/\[repo\-name\]/$new_text/g" README.md

git add .
git commit -m "updated README.md"
git push

git checkout docs

sed -i "s/\[Datum\]\-\[Thema\]/$new_text/ig" README.md

git add .
git commit -m "updated README.md"
git push

git checkout setup

sed -i "s/\[Datum\]\-\[Thema\]/$new_text/ig" README.md

git add .
git commit -m "updated README.md"
git push

git checkout final

sed -i "s/\[Datum\]\-\[Thema\]/$new_text/ig" README.md

git add .
git commit -m "updated README.md"
git push

git checkout main
