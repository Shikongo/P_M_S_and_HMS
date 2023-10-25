



import ballerina/graphql;

import ballerina/io;

public function main() {
    // Replace with your GraphQL server endpoint
    string url = "https://localhost/900.com/graphql";
    

    // Replace with your GraphQL query
    string graphqlQuery = """
    {
        queryName {
            field1
            field2
        }
    }
    """;

    // Create an HTTP client
    http:Client graphqlClient = new;

    // Create an HTTP request
    http:Request request = new;
    request.url = url;
    request.setPayload(graphqlQuery);

    // Set headers and HTTP method
    request.setHeader("Content-Type", "application/json");
    request.setMethod("POST");

    // Send the HTTP request
    var response = check graphqlClient->send(request);

    // Check the response and handle it
    if (response is http:Response) {
        if (response.statusCode == 200) {
            json|error data = check response.getJsonPayload();
            if (data is json) {
                io:println(data.toString());
            } else {
                io:println("Failed to parse response.");
            }
        } else {
            io:println("HTTP Request failed with status code: " + response.statusCode.toString());
        }
    } else {
        io:println("HTTP Request failed.");
    }
}
