#!/bin/sh
cd ./service
nohup pnpm start > ../logs/service.log &
echo "Start service complete!"


cd ..
echo "" > front.log
nohup pnpm dev > ./logs/front.log &
echo "Start front complete!"
