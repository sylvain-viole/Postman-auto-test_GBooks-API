# Google books API automated testing project.

### This repo hosts a test package (documentation and scripts) for the google books API.

- **Author** : Sylvain Viole
## Purpose :
- Design and deploy an automated non-regression test suite on the [Google Books API](https://developers.google.com/books/)

## You want to try it ? => How to : ##
- Git clone this repo,
- This test collection uses a private google webapp :
    - Request acces by sending me your google email.
- Some requests require oAuth2 authentification from google : OAuth2 and APIKEY
   - Follow the steps to get them [here](https://developers.google.com/books/docs/v1/using?hl=en)
   - Here is a [tutorial](https://medium.com/kinandcartacreated/google-authentication-with-postman-12943b63e76a) to get a token with POSTMAN
- Once you get your token and apikey just copy/paste them in the corresponding value fields of ```gbook_test.postman_environment.json```

- install [newman](https://learning.postman.com/docs/running-collections/using-newman-cli/command-line-integration-with-newman/),
- install [htmlextra reporter](https://github.com/DannyDainton/newman-reporter-htmlextra),
- run the following command line from your local folder :

```newman run gbook_test.postman_collection.json -d gbook_test.postman_datas.json -e gbook_test.postman_environment.json -r htmlextra --reporter-htmlextra-title "Google Books Api Testing Report"```

- check html file created in the ```newman``` subdirectory

- An automated script ```launchTest.sh``` launches test and send report to dedicated discord server.

## Documentation:
- You can find more context and technical info on the [presentation document (pdf)](https://github.com/sylvain-viole/Postman-auto-test_GBooks-API/blob/main/gbook_presentation.pdf).
- All tests scenarios and cases are described in the COLLECTION documentation.
