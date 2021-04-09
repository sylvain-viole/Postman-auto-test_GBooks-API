#!/bin/bash
newman run gbook_test.postman_collection.json -d gbook_test.postman_datas.json -e gbook_test.postman_datas.json -r htmlextra --reporter-htmlextra-title "Google Books Api Testing Report"
git add newman
git commit -m "Test Result on $(date)"
git push origin main
