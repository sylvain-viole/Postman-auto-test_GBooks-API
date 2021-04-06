#!/bin/bash
newman run https://www.getpostman.com/collections/d17eab280931854df69a -d datas.json -e TEST.postman_environment.json -r htmlextra --reporter-htmlextra-title "Google Books Api Testing Report"
sleep 1
git add newman/
sleep 1
git commit -m "Test Result on $(date)"
sleep 1
git push origin main