pnpm run lint-fix

rm -rf ../api/src/common && mkdir ../api/src/common && rsync -a --prune-empty-dirs --include '*/src' --include '*.ts' --exclude 'node_modules' ./src/** ../api/src/common
rm -rf ../ui/src/common && mkdir ../ui/src/common && rsync -a --prune-empty-dirs --include '*/src' --include '*.ts' --exclude 'node_modules' ./src/** ../ui/src/common