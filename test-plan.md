# TEST PLAN

## INTRODUCTION
The product being tested is the GOOGLE BOOKS API in order to ensure integration/non-regression over a PUBLIC LIBRARY WEB SERVICE.
***

## OBJECTIVES and TASKS

### OBJECTIVES :

- Ensure that Client's web service requesting the Google Books API gets robust and reliable results

### TASKS :

- Design and deploy an automated non regression test suite challenging the routes used by the client's web service,
- Run TESTS SUITE,
- Report TESTS RESULTS.

***

## In/Out SCOPE :

### IN scope :
- Integration/non-regression tests between client's web service and google books API
- Performance test on the response speed 

### OUT of scope :
- All other tests (unit, system, e2e, performance)
***

## Technical background :

**SOFTWARE** : [POSTMAN  +8.0.7](https://www.postman.com/), [NewMan Cli Tool](https://learning.postman.com/docs/running-collections/using-newman-cli/command-line-integration-with-newman/), [HTMLextra reports extension](https://github.com/DannyDainton/newman-reporter-htmlextra)


**ENVIRONEMENT** : All tests will be run on a TEST environnement.

## Schedule / Reporting / Risks :
**Schedule** : test suite to be launched prior to each iteration of the web service deployment

**Reporting** : HTML report will be logged for each execution of the test suite. Report will be saved locally on the machine that executed the scripts.

**Risks** : Considering the fact that we are testing an external API, changes or discontinuation of service may cause large production delays.
***

## Further Documentation :
- More documentation will be found on the POSTMAN COLLECTION's DOCUMENTATION.
