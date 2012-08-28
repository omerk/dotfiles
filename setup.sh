#!/bin/bash

# setup.sh -- Creates symlinks for the dotfiles
# Shamelessly stolen from: http://coderwall.com/p/qz3i5w

for file in [a-zA-Z]* ; do
	if [[ "$file" != "setup.sh" && "$file" != "README.md" ]] ; then
		if [[ -h ~/."$file" ]] ; then
			# symlink, remove it since it will be re-created anyway
			echo "  Removing symbolic link ~/.$file"
			rm ~/."$file"
		elif [[ -a ~/."$file" ]] ; then
			# an actual file, create backup
			echo "  ~/.$file exists. Moving it to ~/.$file.back"
			mv ~/."$file" ~/."$file".back || echo "Couldn't move ~/.$file to ~/.$file.backup!"
		fi

		ln -s `pwd`/"$file" ~/."$file" && echo "Linked ~/.$file to `pwd`/$file" || echo "Couldn't link ~/.$file to `pwd`/$file!"
	fi
done

