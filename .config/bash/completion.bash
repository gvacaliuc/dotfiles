COMPLETION_DIR="$HOME/.config/bash/completion.d"

for f in $COMPLETION_DIR/*; do
  [ -f "$f" ] && . "$f"
done

BAZEL_COMPLETION="$HOME/.bazel/bin/bazel-complete.bash"
[ -f "$BAZEL_COMPLETION" ] && . "$BAZEL_COMPLETION"

TRAVIS_COMPLETION="$HOME/.travis/travis.sh"
[ -f "$TRAVIS_COMPLETION" ] && . "$TRAVIS_COMPLETION"
