
package Paws::ApiGateway::PutMethod;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool');
  has AuthorizationType => (is => 'ro', isa => 'Str', required => 1);
  has AuthorizerId => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Method');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutMethod - Arguments for method PutMethod on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMethod on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method PutMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMethod.

As an example:

  $service_obj->PutMethod(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

Specifies whether the method required a valid ApiKey.



=head2 B<REQUIRED> AuthorizationType => Str

Specifies the type of authorization used for the method.



=head2 AuthorizerId => Str

Specifies the identifier of an Authorizer to use on this Method, if the
type is CUSTOM.



=head2 B<REQUIRED> HttpMethod => Str

Specifies the method request's HTTP method type.



=head2 RequestModels => L<Paws::ApiGateway::MapOfStringToString>

Specifies the Model resources used for the request's content type.
Request models are represented as a key/value map, with a content type
as the key and a Model name as the value.



=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

A key-value map defining required or optional method request parameters
that can be accepted by Amazon API Gateway. A key defines a method
request parameter name matching the pattern of
C<method.request.{location}.{name}>, where C<location> is
C<querystring>, C<path>, or C<header> and C<name> is a valid and unique
parameter name. The value associated with the key is a Boolean flag
indicating whether the parameter is required (C<true>) or optional
(C<false>). The method request parameter names defined here are
available in Integration to be mapped to integration request parameters
or body-mapping templates.



=head2 B<REQUIRED> ResourceId => Str

The Resource identifier for the new Method resource.



=head2 B<REQUIRED> RestApiId => Str

The RestApi identifier for the new Method resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

