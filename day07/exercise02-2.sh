#!/bin/sh

# 2-2
# -zは文字列の長さが0の時true(1). -nは文字列の長さが1以上の時true(1)
if [ -z "$GUEST" ]; then
  echo "ユーザー名(GUEST)を設定して下さい"
  exit 1
fi

# macにはuseraddはない
# useradd $GUEST
echo "useraddを実行"
unset GUEST
