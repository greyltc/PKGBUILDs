#!/usr/bin/env bash
# this script syncs the branches in this repo to their counterpart AUR package repos

BRANCHES=$(git branch --column)
BRANCHES=${BRANCHES/\*/}
BRANCHES=${BRANCHES/master/}
BRANCHES=($BRANCHES)

for i in ${BRANCHES[@]}; do
        git remote add ${i}-AUR ssh+git://aur@aur.archlinux.org/${i}.git
        git checkout ${i}
        updpkgsums
        mksrcinfo
        sed -i '2d' .SRCINFO
        git add PKGBUILD
        git add .SRCINFO
        git commit -m "update checksums and srcinfo"
        git push ${i}-AUR +${i}:master
        git remote remove ${i}-AUR
done

git push --all origin
