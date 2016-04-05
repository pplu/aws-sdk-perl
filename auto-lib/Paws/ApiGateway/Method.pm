
package Paws::ApiGateway::Method;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool');
  has AuthorizationType => (is => 'ro', isa => 'Str');
  has AuthorizerId => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str');
  has MethodIntegration => (is => 'ro', isa => 'Paws::ApiGateway::Integration');
  has MethodResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethodResponse');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Method

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

Specifies whether the method requires a valid ApiKey.



=head2 AuthorizationType => Str

The method's authorization type.



=head2 AuthorizerId => Str

Specifies the identifier of an Authorizer to use on this Method. The
authorizationType must be CUSTOM.



=head2 HttpMethod => Str

The HTTP method.



=head2 MethodIntegration => L<Paws::ApiGateway::Integration>

The method's integration.



=head2 MethodResponses => L<Paws::ApiGateway::MapOfMethodResponse>

Represents available responses that can be sent to the caller. Method
responses are represented as a key/value map, with an HTTP status code
as the key and a MethodResponse as the value. The status codes are
available for the Integration responses to map to.



=head2 RequestModels => L<Paws::ApiGateway::MapOfStringToString>

Specifies the Model resources used for the request's content type.
Request models are represented as a key/value map, with a content type
as the key and a Model name as the value.



=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

Represents request parameters that can be accepted by Amazon API
Gateway. Request parameters are represented as a key/value map, with a
source as the key and a Boolean flag as the value. The Boolean flag is
used to specify whether the parameter is required. A source must match
the pattern C<method.request.{location}.{name}>, where C<location> is
either querystring, path, or header. C<name> is a valid, unique
parameter name. Sources specified here are available to the integration
for mapping to integration request parameters or templates.




=cut

