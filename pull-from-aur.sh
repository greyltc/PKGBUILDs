#!/usr/bin/env bash
# this script adds branches to this repo that correspond to AUR package repos

#AUR_PACKAGES=(packageA packageB packageB)

for i in ${AUR_PACKAGES[@]}; do
        git remote add ${i}-AUR https://aur.archlinux.org/${i}.git
	git fetch ${i}-AUR
	git checkout --orphan ${i}
	git rm -rf .
	git merge ${i}-AUR/master
	git remote remove ${i}-AUR
done

git push --all origin
