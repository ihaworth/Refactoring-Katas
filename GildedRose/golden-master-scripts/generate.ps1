# Based on scripts from https://github.com/SamirTalwar/trivia-golden-master.git


if ($args.Count -ne 4) 
{ 
	echo "Usage: generate \""your command here\"" \""output directory\"""
} 



$command=$args[0]
$dir=$args[1]

echo $dir

mkdir -p $dir\golden-master
iex $command > $dir/golden-master
