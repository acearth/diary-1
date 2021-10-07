set -ex

timestamp=$(date +%Y%m%d-%H%M%S)
diary=diary-${timestamp}.md
diary_path=content/posts/$diary
hugo new posts/$diary

# macos sed is not gnu-sed, special treat is needed.
if [ "$(uname)" == "Darwin" ]; then
  sed -i '-to-do-remove' '/draft:/s/true/false/' $diary_path
  rm $diary_path-to-do-remove
else
  sed -i '/draft:/s/true/false/' $diary_path
fi

echo $(fortune) >> $diary_path

git add $diary_path
git commit -m "new diary at ${timestamp}"
git push origin main
