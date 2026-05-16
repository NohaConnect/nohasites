#!/usr/bin/env bash
# Install nohasites + nohatracking skills into ~/.claude/skills/
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/NohaConnect/nohasites/main/install.sh | bash

set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"

bold()  { printf "\033[1m%s\033[0m\n" "$1"; }
green() { printf "\033[32m✓\033[0m %s\n" "$1"; }
yellow(){ printf "\033[33m▸\033[0m %s\n" "$1"; }
red()   { printf "\033[31m✗\033[0m %s\n" "$1" >&2; }

bold "Installing Noha skills into ${SKILLS_DIR}"

# Check git
if ! command -v git >/dev/null 2>&1; then
  red "git not found. Install git first (e.g. brew install git) and re-run."
  exit 1
fi

mkdir -p "${SKILLS_DIR}"

install_or_update_skill() {
  local name="$1"
  local repo_url="$2"
  local dest="${SKILLS_DIR}/${name}"

  if [[ -d "${dest}/.git" ]]; then
    yellow "Updating ${name}..."
    git -C "${dest}" pull --ff-only --quiet
    green "${name} updated"
  elif [[ -e "${dest}" ]]; then
    red "${dest} exists but is not a git checkout. Backup and re-run."
    exit 1
  else
    yellow "Cloning ${name}..."
    git clone --quiet "${repo_url}" "${dest}"
    green "${name} installed"
  fi
}

install_or_update_skill "nohasites"    "https://github.com/NohaConnect/nohasites.git"
install_or_update_skill "nohatracking" "https://github.com/NohaConnect/nohatracking.git"

echo ""
bold "Skills Noha instaladas."
echo ""
echo "Próximos passos (manuais — dentro do Claude Code, não no terminal):"
echo ""
echo "  1) Plugins de marketplace:"
echo "     /plugin install superpowers@superpowers-marketplace"
echo "     /plugin install frontend-design@claude-code-plugins"
echo ""
echo "  2) Verificar que ui-ux-pro-max e copywriting estão ativas via /plugin"
echo ""
echo "  3) Recarregar a sessão e invocar:  /nohasites"
echo ""
