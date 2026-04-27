#!/bin/bash
set -e

DOCS_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DOCS_DIR"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log() { echo -e "${GREEN}[BUILD]${NC} $1"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }
err() { echo -e "${RED}[ERROR]${NC} $1"; }

clean_aux() {
	local dir="${1:-.}"
	rm -f "$dir"/*.aux "$dir"/*.log "$dir"/*.out "$dir"/*.toc \
		"$dir"/*.bbl "$dir"/*.blg "$dir"/*.lof "$dir"/*.lot \
		"$dir"/*.fls "$dir"/*.fdb_latexmk "$dir"/*.synctex.gz
	find "$dir" -maxdepth 2 -name '*.aux' -delete 2>/dev/null || true
}

# NJUPT thesis build pipeline:
# 1. xelatex NJUPT_Professional_Thesis_d1.tex
# 2. bibtex NJUPT_Professional_Thesis_d1
# 3. xelatex NJUPT_Professional_Thesis_d1.tex
# 4. xelatex NJUPT_Professional_Thesis_d1.tex
build_with_bib() {
	local tex="$1"
	local name="${tex%.tex}"
	log "Compiling $tex (with BibTeX)..."
	xelatex -interaction=nonstopmode -halt-on-error "$tex" >/dev/null 2>&1 || {
		err "Pass 1 failed for $tex."
		return 1
	}
	bibtex "$name" >/dev/null 2>&1 || warn "bibtex generated warnings for $name."
	xelatex -interaction=nonstopmode -halt-on-error "$tex" >/dev/null 2>&1 || {
		err "Pass 2 failed for $tex."
		return 1
	}
	xelatex -interaction=nonstopmode -halt-on-error "$tex" >/dev/null 2>&1 || {
		err "Pass 3 failed for $tex."
		return 1
	}
	log "$name.pdf successfully generated ✓"
}

usage() {
	echo "Usage: $0 <target...>"
	echo ""
	echo "  njupt    Compile NJUPT master's thesis (with BibTeX)"
	echo "  clean    Clean compilation auxiliary files"
	echo ""
	echo "Example:"
	echo "  ./build.sh njupt"
}

do_build() {
	case "$1" in
	njupt)
		local njupt_dir="$DOCS_DIR/NJUPT_Professional_Thesis_draft"
		cd "$njupt_dir"
		build_with_bib NJUPT_Professional_Thesis_d1.tex
		cd "$DOCS_DIR"
		;;
	clean)
		log "Cleaning auxiliary files..."
		clean_aux "$DOCS_DIR"
		clean_aux "$DOCS_DIR/NJUPT_Professional_Thesis_draft"
		clean_aux "$DOCS_DIR/NJUPT_Professional_Thesis_draft/chapters"
		log "Cleanup complete ✓"
		;;
	*)
		err "Unknown target: $1"
		usage
		return 1
		;;
	esac
}

if [ $# -eq 0 ]; then
	usage
	exit 0
fi

for target in "$@"; do
	do_build "$target"
done

log "All tasks completed successfully ✓"
