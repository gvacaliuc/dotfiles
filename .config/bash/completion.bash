COMPLETION_DIR="$HOME/.config/bash/completion.d"

for f in $COMPLETION_DIR/*; do
  [ -f "$f" ] && . "$f"
done
