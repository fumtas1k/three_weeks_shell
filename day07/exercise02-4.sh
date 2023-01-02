#!/bin/sh

# 2-4
default_setting_date="+0d"
default_file_name="sample.txt"

if [ -z "${SETTING_DATE}" ]; then
  echo "日付の設定がありません!"
  echo "デフォルト値: $default_setting_date"

fi

if [ -z "${FILE_NAME}" ]; then
  echo "ファイル名が設定されていません!"
  echo "デフォルト値: $default_file_name"
fi

FILE_NAME="${FILE_NAME:=$default_file_name}"
FILE_DATE=$(date -v "${SETTING_DATE:=$default_setting_date}" '+%Y-%m-%dT%H:%M:%S')

# ダブルクォートで囲まないと変数展開してくれない
touch -d "${FILE_DATE}" "${FILE_NAME}"

echo "# 作成したファイルは..."
ls -l "${FILE_NAME}"
