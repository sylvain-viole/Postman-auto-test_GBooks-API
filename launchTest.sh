#!/bin/bash
testDate=$(date +%Y%m%d_%H%M%S)
newman run gbook_test.postman_collection.json -d gbook_test.postman_datas.json -e gbook_test.postman_datas.json -r htmlextra --reporter-htmlextra-export ./reports/"report_$testDate.html" --reporter-htmlextra-title "Google Books Api Testing Report"
latest_report="./reports/$(ls -t ./reports | head -n1)"
msg="Here is the latest Postman test report : $(ls -t ./reports | head -n1)"
curl --location --request POST 'https://discord.com/api/webhooks/829994477971308565/QmQ7baEsY8zuiCp2W9HpY9LdhwPpUyAetFgXlzBlHzvnK-Yr3F6OoDa0_SGzwyosNt8F?wait=true' \
--form "content=$msg" \
--form "file=@$latest_report"
