!#/bin/bash
###delete github old files
git rm -r ./*

###generate newfiles and copy
cd ../hexoGithub/hexo-codes/
hexo clean
hexo g
cp -r public/*   ~/hexodir/pagesGithub/ 

###add commit and push static files to github
cd  ~/hexodir/pagesGithub/
git add --all
git commit -m "update static files"
git push origin master






