_texmfhome=`kpsewhich -var-value=TEXMFHOME`;
_userstyle_filename="gtszrcp.sty";
_userstyle_filepath="$PWD/$_userstyle_filename";
_userstyle_targetpath="$_texmfhome/$_userstyle_filename";

if [ ! -f "$_userstyle_filepath" ];
then
	echo "$_userstyle_filename doesn't exits";
else
	if [ ! -d "$_texmfhome" ];
	then
		echo "$_texmfhome doesn't exists";
		echo "CREATE $_texmfhome DIRECTORY";
		mkdir "$_texmfhome"
	else
		if [ -f "$_userstyle_targetpath" ];
		then
			echo "$_userstyle_targetpath is already exists, remove it";
			rm "$_userstyle_targetpath";
		fi;
	fi;

	ln -s "$_userstyle_filepath" "$_userstyle_targetpath";
	echo "$_userstyle_filename added to $_texmfhome";
fi;

