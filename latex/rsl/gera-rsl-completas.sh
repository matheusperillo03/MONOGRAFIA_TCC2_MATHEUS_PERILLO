#!/bin/sh
# Gera docs/rsl1-completa.pdf e docs/rsl2-completa.pdf:
# parte I = protocolo colorido (docs/rslN-protocolo-revisao.pdf); partes II e III = execução e resultados (rsl/rslN-execucao-resultados.tex).
# Uso (na pasta latex/): sh rsl/gera-rsl-completas.sh
set -e
L=$(pwd); D="$L/../docs"; O=$(mktemp -d)
for n in 1 2; do
  J=rsl${n}-execucao-resultados
  pdflatex -interaction=nonstopmode -output-directory="$O" rsl/$J.tex >/dev/null || true
  (cd "$O" && BIBINPUTS="$L:" bibtex $J >/dev/null)
  pdflatex -interaction=nonstopmode -output-directory="$O" rsl/$J.tex >/dev/null || true
  pdflatex -interaction=nonstopmode -output-directory="$O" rsl/$J.tex >/dev/null || true
  grep -a "Output written" "$O/$J.log"
  pdfunite "$D/rsl${n}-protocolo-revisao.pdf" "$O/$J.pdf" "$D/rsl${n}-completa.pdf"
  echo "rsl${n}-completa.pdf: $(pdfinfo "$D/rsl${n}-completa.pdf" | grep Pages)"
done
