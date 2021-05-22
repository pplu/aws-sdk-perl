package Paws::ApiGatewayV2::IntegrationParameters;
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => 'HashRef[Maybe[Str]]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::IntegrationParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::IntegrationParameters object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::IntegrationParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

For WebSocket APIs, a key-value map specifying request parameters that
are passed from the method request to the backend. The key is an
integration request parameter name and the associated value is a method
request parameter value or static value that must be enclosed within
single quotes and pre-encoded as required by the backend. The method
request parameter value must match the pattern of
method.request.{location}.{name} , where {location} is querystring,
path, or header; and {name} must be a valid and unique method request
parameter name.

For HTTP API integrations with a specified integrationSubtype, request
parameters are a key-value map specifying parameters that are passed to
AWS_PROXY integrations. You can provide static values, or map request
data, stage variables, or context variables that are evaluated at
runtime. To learn more, see Working with AWS service integrations for
HTTP APIs
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html).

For HTTP API integrations without a specified integrationSubtype
request parameters are a key-value map specifying how to transform HTTP
requests before sending them to the backend. The key should follow the
pattern
E<lt>actionE<gt>:E<lt>header|querystring|pathE<gt>.E<lt>locationE<gt>
where action can be append, overwrite or remove. For values, you can
provide static values, or map request data, stage variables, or context
variables that are evaluated at runtime. To learn more, see
Transforming API requests and responses
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html).

=head1 ATTRIBUTES

=head2 Map => Str

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

