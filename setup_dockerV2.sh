FUSTR_dir="$(dirname "$BASH_SOURCE")"
echo $FUSTR_dir
target=${1%/}

cp -r $target $FUSTR_dir
echo cp -r  $target $FUSTR_dir/$(basename $target)
echo $FUSTR_dir

echo $work_dir
ls $work_dir
docker build -t  fustr --build-arg package=$(basename $target)  $FUSTR_dir --no-cache
#this file has to be adjusted