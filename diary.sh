#!/bin/bash

#日記データの保存ディレクトリの引数
#directory="${HOME}/diary"

#データ保存ディレクトリがなければホームディレクトリ直下に作成する
#if [ ! -d "$directory" ];then
#mkdir "$directory"
#fi

#日記ファイルパスの組み立て
diaryfile="$(date '+%Y-%m-%d').txt"

#日記ファイルがなければ(今日初めての日記の記入なら)ファイル内の先頭に日記を挿入
if [ ! -e "$diaryfile" ];then
date '+%Y-%m-%d' > "$diaryfile"
fi

#vimの起動および"$diaryfile"に実行権限を付与する
vim "$diaryfile" && chmod 755 "$diaryfile"