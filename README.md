# Google books API automated testing project.

### This repo hosts a test package (documentation and scripts) for the google books API.

- **Author** : Sylvain Viole
## Purpose :
- Design and deploy an automated non-regression test suite on the [Google Books API](https://developers.google.com/books/)

## How to :
- install [newman](https://learning.postman.com/docs/running-collections/using-newman-cli/command-line-integration-with-newman/)
- install [htmlextra reporter](https://github.com/DannyDainton/newman-reporter-htmlextra)
- request for oauth and env variables by contacting me via github
- Download datas.json file to your local folder
- Place the env variable JSON file into your local folder
- run the following command line from your local folder :

```newman run https://www.getpostman.com/collections/d17eab280931854df69a -d datas.json -e TEST.postman_environment.json -r htmlextra --reporter-htmlextra-title "Google Books Api Testing Report"```

- check html file created in the ```newman``` subdirectory

- If you forked and linked this repo to your local folder you can use ```bash launchTest.sh``` to automaticaly generate and push the report to your GH repo.

## Documentation:
- You can find more info on the TEST STRATEGY on [test-plan.md](https://github.com/sylvain-viole/wcs_projet-1_google-books-api-tests/blob/main/test-plan.md).
- All tests scenarios and cases are described in the COLLECTION documentation.
