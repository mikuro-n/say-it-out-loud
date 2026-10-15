#!/bin/bash
# Little Talks — ダブルクリックで起動（Mac）
cd "$(dirname "$0")"
PORT=8765
echo "Starting Little Talks on http://localhost:$PORT"
echo "このウィンドウを閉じるとアプリも止まります。"
( sleep 1; open "http://localhost:$PORT" ) &
python3 -m http.server $PORT --bind 127.0.0.1
