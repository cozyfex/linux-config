TARGET=/Volumes/Data/Dropbox/Work/LearnCode/go/cozyfex.github.io/content/posts

for d in $TARGET/*; do
  for f in $d/*; do
    if [ ! -e "$d/index.kr.md" ]; then
      echo $d | sed -e "s#$TARGET##" | sed -e "s#/##"
    fi
  done
done
