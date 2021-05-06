
package Paws::ApiGateway::MethodResponse;
  use Moose;
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseModels');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean', traits => ['NameInRequest'], request_name => 'responseParameters');
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::MethodResponse

=head1 ATTRIBUTES


=head2 ResponseModels => L<Paws::ApiGateway::MapOfStringToString>

Specifies the Model resources used for the response's content-type.
Response models are represented as a key/value map, with a content-type
as the key and a Model name as the value.


=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

A key-value map specifying required or optional response parameters
that API Gateway can send back to the caller. A key defines a method
response header and the value specifies whether the associated method
response header is required or not. The expression of the key must
match the pattern C<method.response.header.{name}>, where C<name> is a
valid and unique header name. API Gateway passes certain integration
response data to the method response headers specified here according
to the mapping you prescribe in the API's IntegrationResponse. The
integration response data that can be mapped include an integration
response header expressed in C<integration.response.header.{name}>, a
static value enclosed within a pair of single quotes (e.g.,
C<'application/json'>), or a JSON expression from the back-end response
payload in the form of C<integration.response.body.{JSON-expression}>,
where C<JSON-expression> is a valid JSON expression without the C<$>
prefix.)


=head2 StatusCode => Str

The method response's status code.


=head2 _request_id => Str


=cut

