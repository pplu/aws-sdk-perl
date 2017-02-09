
package Paws::ApiGateway::IntegrationResponse;
  use Moose;
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseParameters');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseTemplates');
  has SelectionPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'selectionPattern');
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::IntegrationResponse

=head1 ATTRIBUTES


=head2 ContentHandling => Str

Specifies how to handle response payload content type conversions.
Supported values are C<CONVERT_TO_BINARY> and C<CONVERT_TO_TEXT>, with
the following behaviors:

=over

=item *

C<CONVERT_TO_BINARY>: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

=item *

C<CONVERT_TO_TEXT>: Converts a response payload from a binary blob to a
Base64-encoded string.

=back

If this property is not defined, the response payload will be passed
through from the integration response to the method response without
modification.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">
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


=head2 _request_id => Str


=cut

