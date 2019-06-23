COMPLETION_DIR="$HOME/.config/bash/completion.d"

for f in $COMPLETION_DIR/*; do
  [ -f "$f" ] && . "$f"
done

BAZEL_COMPLETION="$HOME/.bazel/bin/bazel-complete.bash"
[ -f "$BAZEL_COMPLETION" ] && . "$BAZEL_COMPLETION"
