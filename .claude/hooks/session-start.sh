#!/bin/bash
set -euo pipefail

# Pin the commit identity to the repo owner.
#
# Claude Code containers (and the web/remote images in particular) ship with
#   user.name  = Claude
#   user.email = noreply@anthropic.com
# in the global gitconfig. Without this hook, any commit made during a session
# is authored as Claude, which this repo's conventions forbid. CLAUDE.md governs
# what goes into a commit *message*; it has no reach over the author header, so
# it has to be pinned here.
#
# --local writes .git/config, which takes precedence over the global file and
# is not committed. Runs for local and remote sessions alike. Idempotent.

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  exit 0
fi

git config --local user.name "Pablo Motta"
git config --local user.email "pmotta.dev@gmail.com"
