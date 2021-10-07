set -ex
timestamp=$(date +%Y%m%d-%H%M%S)
diary=diary-${timestamp}.md
diary_path=content/posts/$diary
hugo new posts/$diary
echo $(fortune) >> $diary_path

git add $diary_path
git commit -m"new diary at ${timestamp}"

