import ballerinax/postgresql.driver as _;
import ballerina/http;
import ballerina/graphql;


public type  User record {|
readonly int userId; 
string firstName;
string lastName;
string  jobtitle;
string position;
string role;
|};



listener http:Listener httpListener = check new(9000);

service /covid19 on new graphql:Listener(httpListener) {

postgresql:Client|sql:Error dbClient = new ();



postgresql:Client|sql:Error dbClient2 = 
                                new ("localhost", "postgres", "postgres", 
                                     "postgres", 5432)






}
# module for postgres
postgresql:Options postgresqlOptions = {
  connectTimeout: 10
};
postgresql:Client|sql:Error dbClient = 
                                new (username = "postgres", password = "postgres", 
                                     database = "test", options = postgresqlOptions);
                                     postgresql:Client|sql:Error dbClient4 = 
                                new (username = "postgres", password = "postgres",
                                     connectionPool = {maxOpenConnections: 5})





sql:ExecutionResult result = 
                check dbClient->execute(`CREATE TABLE departmentObjective (
                                           id INT AUTO_INCREMENT,
                                           age INT, 
                                           name VARCHAR(255), 
                                           PRIMARY KEY (id)
                                         )`);

                                         sql:ExecutionResult result = 
                check dbClient->execute(`CREATE TABLE SupervisrKpi (
                                           id INT AUTO_INCREMENT,
                                           age INT, 
                                           name VARCHAR(255), 
                                           PRIMARY KEY (id)
                                         )`);


                                         
