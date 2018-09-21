#!/bin/bash
# haolianluo.github.io builder.
# @author zacksleo <zacksleo@gmail.com>
#
body='{
"request": {
    "message": "Update docs (triggered by Fiona2013/Fiona2013.github.io:docs).",
    "branch":"hexo-theme-annie"
  }
}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token ${ACCESS_TOKEN}" \
  -d "$body" \
  https://api.travis-ci.org/repo/Fiona2013%2FFiona2013.github.io/requests