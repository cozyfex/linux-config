TARGET=/Volumes/Data/Dropbox/Work/LearnCode/go/cozyfex.github.io/content/posts

FILES=$(find $TARGET -type f -name "index.*")

CHECKER=("title:" "date:" "author: CozyFex" "categories:" "tags:" "keywords:")

for key in "${CHECKER[@]}"; do
  echo "${key%:*}"
  for f in $FILES; do
    filter=$(grep "$f" -e "$key")
    if [ -z "${filter}" ]; then
      echo "  ${f#$TARGET/}"
    fi
  done
done
