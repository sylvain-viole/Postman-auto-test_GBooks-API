#!/bin/bash
newman run Google\ Books\ Api\ Test.postman_collection.json -d datas.json -r htmlextra --reporter-htmlextra-title "Google Books Api Testing Report"
git status
git add newman/
git commit -m "Test Result on $(date)"