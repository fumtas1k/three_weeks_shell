#!/bin/sh

# 2-3
if [ -z "$COMMENT" ]; then
  COMMENT="No Comment"
fi

echo "Comment: ${COMMENT}"

# ダブルクォートで囲まないとGUESTが空の場合もidが成功する
# &> /dev/null は、標準出力と標準エラー出力の両方共を破棄する
id "$GUEST" &> /dev/null
if [ $? -ne 0 ]; then
  echo "ユーザーが存在しません"
  exit 1
fi

# ユーザー情報（コメント）の更新
# macでは動作しないのでコメントアウト
# usermod -c "$COMMENT" $GUEST
echo "ユーザーコメント変更"
