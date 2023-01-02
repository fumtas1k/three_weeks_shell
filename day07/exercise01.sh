#!/bin/sh

# 1-1
echo "シェルスクリプトを勉強しています"

# 1-2
mkdir -p day07/mydir/subdir

# 1-3
cd day07/mydir/subdir
cat <> blank.txt
cat <> test.txt

# 1-4
ls | xargs chmod 615
echo "# subdir内のファイル"
ls -l

# 1-5
cd ..
echo "# mydir内のファイル"
ls -l

# 1-6
for i in {1..5}; do
  echo "abcde" >> hello.txt
done

# 1-7
cp -p hello.txt hello.txt.copy

# 1-8
rm hello.txt

# 1-9
echo "# hello.txt.copyの中身"
cat hello.txt.copy

# 1-10
echo "# 現在のディレクトリ"
realpath $(pwd)
