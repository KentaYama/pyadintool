#!/bin/bash

# 対象のフォルダを指定
TARGET_DIR="/mnt/d/Hazumi/wav16/2010"

# フォルダ内のすべての .wav ファイルを処理
for file in "$TARGET_DIR"/*.wav; do
    # ファイル名を取得
    filename=$(basename "$file")

    # ファイル名を表示して、指定の python コマンドを実行
    echo "$file" | python pyadintool.py conf/silero4asr.yaml --enable_timestamp --timestampfile "./outputs/2010/${filename%.wav}.lab"
done