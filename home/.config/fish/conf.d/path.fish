set -x PATH "$HOME/.local/bin:$PATH"
set -x PATH "$XDG_DATA_HOME/nvim/mason/bin:$PATH"

# Android
set -x ANDROID_USER_HOME "$XDG_DATA_HOME/android"
set -x ANDROID_HOME "$ANDROID_USER_HOME/sdk"
set -x PATH "$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
set -x PATH "$ANDROID_HOME/emulator:$PATH"
set -x PATH "$ANDROID_HOME/platform-tools:$PATH"

# bun
set -x BUN_INSTALL "$HOME/.bun"
set -x PATH "$BUN_INSTALL/bin:$PATH"

# go
set -x GOPATH "$XDG_DATA_HOME/go"
set -x GOBIN "$GOPATH/bin"
set -x PATH "$GOBIN:$PATH"

# pnpm
set -x PNPM_HOME "$HOME/.local/share/pnpm"
set -x PATH "$PNPM_HOME:$PATH"

