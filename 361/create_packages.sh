echo "[Repository] Generating Packages..."

dpkg-scanpackages -m debs > Packages

echo "Bzip compressing"
bzip2 -kf Packages > Packages.bz2

echo "ZST compressing"
zstd -q -c19 Packages > Packages.zst

echo "XZ compressing"
xz -c9 Packages > Packages.xz

echo "gz compressing"
gzip -nc9 Packages > Packages.gz

echo "lzma compressing"
lzma -c9 Packages > Packages.lzma

echo "lz4 compressing"
lz4 -c9 Packages > Packages.lz4
