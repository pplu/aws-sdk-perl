
package Paws::ApiGateway::MethodResponse;
  use Moose;
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean');
  has StatusCode => (is => 'ro', isa => 'Str');

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

  Represents response parameters that can be sent back to the caller by
Amazon API Gateway. Response parameters are represented as a key/value
map, with a destination as the key and a boolean flag as the value,
which is used to specify whether the parameter is required. A
destination must match the pattern C<method.response.header.{name}>,
where C<name> is a valid, unique header name. Destinations specified
here are available to the integration for mapping from integration
response parameters.
=head2 StatusCode => Str

  The method response's status code.


=cut

