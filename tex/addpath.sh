_TEXMFHOME=`kpsewhich -var-value=TEXMFHOME`;
_USERSTYLE_FILE_NAME="gtszrcp.sty";
_USERSTYLE_FILE_PATH="$PWD/$_USERSTYLE_FILE_NAME";
_USERSTYLE_TARGET_PATH="$_TEXMFHOME/$_USERSTYLE_FILE_NAME";

if [ ! -f "$_USERSTYLE_FILE_PATH" ];
then
	echo "$_USERSTYLE_FILE_NAME doesn't exits";
else
	if [ ! -d "$_TEXMFHOME" ];
	then
		echo "$_TEXMFHOME doesn't exists";
		echo "CREATE $_TEXMFHOME DIRECTORY";
		mkdir "$_TEXMFHOME"
	else
		if [ -f "$_USERSTYLE_TARGET_PATH" ];
		then
			echo "$_USERSTYLE_TARGET_PATH is already exists, remove it";
			rm "$_USERSTYLE_TARGET_PATH";
		fi;
	fi;

	ln -s "$_USERSTYLE_FILE_PATH" "$_USERSTYLE_TARGET_PATH";
	echo "$_USERSTYLE_FILE_NAME added to $_TEXMFHOME";
fi;

