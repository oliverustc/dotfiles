#!/bin/bash 

function getPoem() {
  data=`curl -s https://v1.jinrishici.com/shuqing.json`
  content=`echo $data | jq -r .content`
  title=`echo $data | jq -r .origin`
  author=`echo $data | jq -r .author`
  poem="\033[0;34m $content 《$title》-$author\033[0m"
}
cat /tmp/poems >> /tmp/poems_history 
> /tmp/poems
for i in {1..10}
do 
  poem=""
  getPoem
  echo -e "\t" $poem >> /tmp/poems 
  sleep 0.5
done

