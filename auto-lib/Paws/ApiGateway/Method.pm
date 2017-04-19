
package Paws::ApiGateway::Method;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool');
  has AuthorizationType => (is => 'ro', isa => 'Str');
  has AuthorizerId => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str');
  has MethodIntegration => (is => 'ro', isa => 'Paws::ApiGateway::Integration');
  has MethodResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethodResponse');
  has OperationName => (is => 'ro', isa => 'Str');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean');
  has RequestValidatorId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Method

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

A boolean flag specifying whether a valid ApiKey is required to invoke
this method.


=head2 AuthorizationType => Str

The method's authorization type. Valid values are C<NONE> for open
access, C<AWS_IAM> for using AWS IAM permissions, C<CUSTOM> for using a
custom authorizer, or C<COGNITO_USER_POOLS> for using a Cognito user
pool.


=head2 AuthorizerId => Str

The identifier of an Authorizer to use on this method. The
C<authorizationType> must be C<CUSTOM>.


=head2 HttpMethod => Str

The method's HTTP verb.


=head2 MethodIntegration => L<Paws::ApiGateway::Integration>

Gets the method's integration responsible for passing the
client-submitted request to the back end and performing necessary
transformations to make the request compliant with the back end.

=head1 Example:

=head2 Request

 GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T213210Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}

=head2 Response

The successful response returns a C<200 OK> status code and a payload
similar to the following:

 { "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true } ], "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:responses": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "0cjtch", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestTemplates": { "application/json": "{\n \"a\": \"$input.params('operand1')\",\n \"b\": \"$input.params('operand2')\", \n \"op\": \"$input.params('operator')\" \n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.operator": "integration.response.body.op", "method.response.header.operand_2": "integration.response.body.b", "method.response.header.operand_1": "integration.response.body.a" }, "responseTemplates": { "application/json": "#set($res = $input.path('$'))\n{\n \"result\": \"$res.a, $res.b, $res.op => $res.c\",\n \"a\" : \"$res.a\",\n \"b\" : \"$res.b\",\n \"op\" : \"$res.op\",\n \"c\" : \"$res.c\"\n}" }, "selectionPattern": "", "statusCode": "200" } } }

AWS CLI


=head2 MethodResponses => L<Paws::ApiGateway::MapOfMethodResponse>

Gets a method response associated with a given HTTP status code.

The collection of method responses are encapsulated in a key-value map,
where the key is a response's HTTP status code and the value is a
MethodResponse resource that specifies the response returned to the
caller from the back end through the integration response.

=head1 Example: Get a 200 OK response of a GET method

=head2 Request

 GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T215008Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}

=head2 Response

The successful response returns a C<200 OK> status code and a payload
similar to the following:

 { "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.operator": false, "method.response.header.operand_2": false, "method.response.header.operand_1": false }, "statusCode": "200" }

AWS CLI


=head2 OperationName => Str

A human-friendly operation identifier for the method. For example, you
can assign the C<operationName> of C<ListPets> for the C<GET /pets>
method in PetStore example.


=head2 RequestModels => L<Paws::ApiGateway::MapOfStringToString>

A key-value map specifying data schemas, represented by Model
resources, (as the mapped value) of the request payloads of given
content types (as the mapping key).


=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

A key-value map defining required or optional method request parameters
that can be accepted by Amazon API Gateway. A key is a method request
parameter name matching the pattern of
C<method.request.{location}.{name}>, where C<location> is
C<querystring>, C<path>, or C<header> and C<name> is a valid and unique
parameter name. The value associated with the key is a Boolean flag
indicating whether the parameter is required (C<true>) or optional
(C<false>). The method request parameter names defined here are
available in Integration to be mapped to integration request parameters
or templates.


=head2 RequestValidatorId => Str

The identifier of a RequestValidator for request validation.


=head2 _request_id => Str


=cut

