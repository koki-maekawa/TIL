#!/bin/bash

# TIL Helper Scripts - 今日の日報を作成

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
today_formatted=$(date +%Y-%m-%d)

# ディレクトリ作成
dir_path="${year}/${month}"
mkdir -p "$dir_path"

daily_file="${dir_path}/${day}.md"

if [ ! -f "$daily_file" ]; then
    cp templates/daily-template.md "$daily_file"
    sed -i '' "s/YYYY-MM-DD/${today_formatted}/g" "$daily_file"
    echo "日報ファイルを作成しました: $daily_file"
else
    echo "日報ファイルは既に存在します: $daily_file"
fi
