
package Paws::ApiGateway::IntegrationResponse;
  use Moose;
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has SelectionPattern => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::IntegrationResponse

=head1 ATTRIBUTES


=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>

Represents response parameters that can be read from the backend
response. Response parameters are represented as a key/value map, with
a destination as the key and a source as the value. A destination must
match an existing response parameter in the MethodResponse. The source
can be a header from the backend response, or a static value. Static
values are specified using enclosing single quotes, and backend
response headers can be read using the pattern
C<integration.response.header.{name}>.



=head2 ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>

Specifies the templates used to transform the integration response
body. Response templates are represented as a key/value map, with a
content-type as the key and a template as the value.



=head2 SelectionPattern => Str

Specifies the regular expression (regex) pattern used to choose an
integration response based on the response from the backend. If the
backend is an AWS Lambda function, the AWS Lambda function error header
is matched. For all other HTTP and AWS backends, the HTTP status code
is matched.



=head2 StatusCode => Str

Specifies the status code that is used to map the integration response
to an existing MethodResponse.




=cut

