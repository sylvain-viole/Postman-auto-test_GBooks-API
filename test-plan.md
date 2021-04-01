# TEST PLAN

## INTRODUCTION
The product being tested is the GOOGLE BOOKS API on behalf of the CITY OF ARCACHON in order to ensure non-regression over there PUBLIC LIBRARY WEB SERVICE.

## OBJECTIVES and TASKS

### OBJECTIVES :

- Ensure that Client's web service requesting the Google Books API is robust and reliable.

### TASKS :

- Design and deploy an automated non regression test suite challenging the routes used by the client's web service,
- Run TEST SUITE before each app's iteration deployment,
- Report TESTS RESULTS.

## In/Out SCOPE :

### IN scope :
- Integration test between client's web service and google books API

### OUT of scope :

- All other tests (unit, system, e2e, performance)

## STRATEGY :

**Definition** : By integration test we mean challenging the response of the GOOGLE BOOKS API on client's web service requests.

**Participants** : 
- All steps from design to execution, report and analysis will be handled by SYLVAIN VIOLE.
- Final decision of deployment is made by the final Client.

**Methodology** :
- For each ROUTE used by the client's web service :
  - Iterativ challenge of the route using DDT. Assertions included in the external data file.

## Technical background :

**SOFTWARE** : [POSTMAN v8.0.7](https://www.postman.com/), [NewMan Cli Tool](https://learning.postman.com/docs/running-collections/using-newman-cli/command-line-integration-with-newman/), [HTMLextra reports extension](https://github.com/DannyDainton/newman-reporter-htmlextra)
**ENVIRONNEMENT** : All tests will be run on a TEST environnement.

## Schedule / Reporting / Risks :
**Schedule** : test suite to be launched prior to each iteration of the web service deployment
**Reporting** : HTML report will be logged for each execution of the test suite. Report will be saved locally on the machine that executed the scripts.
**Risks** : 
- Each new ROUTE used by the webservice will need test design time that may delay delivery,
- Considering the fact that we are testing a external API, changes or discontinuation of service may cause large production delays.

## Further Documentation :
- More documentation will be found on the POSTMAN COLLECTION's DOCUMENTATION.
