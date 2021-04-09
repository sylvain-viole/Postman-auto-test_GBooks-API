#!/bin/bash
newman run gbook_test.postman_collection.json -d gbook_test.postman_datas.json -e gbook_test.postman_datas.json -r htmlextra --reporter-htmlextra-title "Google Books Api Testing Report"
sleep 1
git add newman
sleep 1
git commit -m "Test Result on $(date)"
sleep 1
git push origin main
