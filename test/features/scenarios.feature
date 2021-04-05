
// API TEST

    Scenario: [S000] Response Time
        Given the client
        When I request the service
        And my endpoint is valid
        Then I should get a response in less than 400ms
            [C001] Response time is below 400ms

    Scenario: [001] Minimal valid request format
        Given the client
        When I request the service for books with valid endpoint
        And the query has no parameter
        Then I should get a valid response
            [C001] Response has "200" status code
            [C002] Response has headers with content-type "JSON"
            [C003] Response is an object,
            [C003] Response has "kind" property with value "books#volumes",
            [C003] Response has "totalItems" property with value above 0
            
    Scenario: [002] Valid request format with q parameter
        Given the client
        When I request the service for books with valid endpoint
        And "q" is set with a filter
        Then I should get a valid response with items matching "q" filter constraints
            [C001] "intitle" check: Each item has a TITLE including the requested value
            [C002] "inauthor" check: Each item's AUTHORS is an array that includes the requested value
            [C003] "isbn" check: Response has a uniq item with matching "isbn"
 
    Scenario: [003] Valid request format with "orderBy" parameters
        Given the client
        When I request the service for books with valid endpoint
        And "orderBy" parameter is set with a valid value
        Then I should get a valid response with items sorted accordingly
            [C001] Response is valid with "orderBy" = "relevance"
            [C002] Response items are sorted from newest to latest with "orderBy" = "newest"

    Scenario: [004] Valid request format with "maxResults" parameters
        Given the client
        When I request the service for books with valid endpoint
        And "maxResults" parameter is set with a valid value
        Then I should get a valid response with a number of items matching accordingly
            [C001] Response has a count of at least "maxResults" items  

    Scenario: [005] Valid request format with "startIndex" parameter below count of items
        Given the client
        When I request the service for books with valid endpoint
        And "startIndex" parameter is set with a value below the count of items
        Then I should get a valid response with items offset accordingly
            [C001] Response items are offset accordingly to "startIndex" value

    Scenario: [006] Valid request format with "startIndex" parameters above countof items
        Given the client
        When I request the service for books with valid endpoint
        And "startIndex" parameter is set with a value above the count of items
        Then I should get a valid response with 0 items
            [C001] Response is valid and "totalItems" = 0

    Scenario: [007] Valid request format with "langRestrict" parameter
        Given the client
        When I request the service for books with valid endpoint
        And "langRestrict" parameter is set with a valid value
        Then I should get a valid response with items having language matching the input parameter
            [C001] Response is valid and "language" = input value

    Scenario: [089] Invalid request parameters
        Given the client
        When I request the service for books with valid endpoint
        And my parameters are NOT valid
        Then I should get a 400 response with error msg containing mention of invalid parameter

    
    Scenario: [101] Valid request for book by id critical check
        Given the client
        When I request the service for book by id with valid endpoint
        Then I should get a valid response
            [C001] Response has "200" status code
            [C002] Response has headers with content-type "JSON"
            [C003] Response is an object,
            [C003] Response has "kind" property with value "books#volumes",
            [C003] Response has "volumeInfo" property which is an object
            
    Scenario: [102] Valid request for book by id content check
        Given the client
        When I request the service for book by id with valid endpoint
        Then I should get a valid response
            [C001] Response "id" matched request "id"
            [C002] Response "title" is as expected
            [C003] Response has "thumbnail" parameter in "imageLinks"
            [C003] Response "tumbnail" parameter contains an url string,
            [C003] Request to "thumbnail" url returns a "200" code,
            [C003] Request to "thumbnail" url returns an "image"
            [C004] Response has "previewLink" parameter
            [C004] Response "previewLink" parameter contains an url string,
            [C004] Request to "previewLink" url returns a "200" code,
            [C004] Request to "previewLink" url returns a "html" page
            [C004] Response has "infoLink" parameter
            [C004] Response "infoLink" parameter contains an url string,
            [C004] Request to "infoLink" url returns a "200" code,
            [C004] Request to "infoLink" url returns a "html" page
            
    Scenario: [189] Request for book with invalid id
        Given the client
        When I request the service for book by id with valid endpoint
        And the book id is not valid
        Then I should get a response with status code 503
            [C001] Response has "503" status code

    Scenario: [201a] Full search part 1/2
        Given the client
        When I request the service for a book search
        Then I should get a list of books

    Scenario: [201b] Full search part 2/2
        Given the client
        And the result of part 1/2 request
        When I request the service for one book
        Then I should get informations on that book
