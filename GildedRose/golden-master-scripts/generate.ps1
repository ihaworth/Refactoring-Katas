# Based on scripts from https://github.com/SamirTalwar/trivia-golden-master.git

if ($args.Count -ne 2)
{ 
	echo "Usage: generate \""your command here\"" \""output directory\"""
	exit
} 

$command=$args[0]
$dir=$args[1]

echo $dir

if (!(Test-Path $dir))
{
	mkdir -p $dir
}
iex $command > $dir/golden-master
