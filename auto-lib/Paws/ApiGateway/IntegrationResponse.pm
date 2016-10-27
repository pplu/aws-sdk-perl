
package Paws::ApiGateway::IntegrationResponse;
  use Moose;
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has SelectionPattern => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::IntegrationResponse

=head1 ATTRIBUTES


=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>

A key-value map specifying response parameters that are passed to the
method response from the back end. The key is a method response header
parameter name and the mapped value is an integration response header
value, a static value enclosed within a pair of single quotes, or a
JSON expression from the integration response body. The mapping key
must match the pattern of C<method.response.header.{name}>, where
C<name> is a valid and unique header name. The mapped non-static value
must match the pattern of C<integration.response.header.{name}> or
C<integration.response.body.{JSON-expression}>, where C<name> is a
valid and unique response header name and C<JSON-expression> is a valid
JSON expression without the C<$> prefix.



=head2 ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>

Specifies the templates used to transform the integration response
body. Response templates are represented as a key/value map, with a
content-type as the key and a template as the value.



=head2 SelectionPattern => Str

Specifies the regular expression (regex) pattern used to choose an
integration response based on the response from the back end. For
example, if the success response returns nothing and the error response
returns some string, you could use the C<.+> regex to match error
response. However, make sure that the error response does not contain
any newline (C<\n>) character in such cases. If the back end is an AWS
Lambda function, the AWS Lambda function error header is matched. For
all other HTTP and AWS back ends, the HTTP status code is matched.



=head2 StatusCode => Str

Specifies the status code that is used to map the integration response
to an existing MethodResponse.




=cut

