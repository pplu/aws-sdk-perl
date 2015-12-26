
package Paws::ApiGateway::PutMethodResponse;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statusCode' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMethodResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::MethodResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutMethodResponseResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutMethodResponse - Arguments for method PutMethodResponse on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMethodResponse on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method PutMethodResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMethodResponse.

As an example:

  $service_obj->PutMethodResponse(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

The HTTP verb that identifies the Method resource.



=head2 B<REQUIRED> ResourceId => Str

The Resource identifier for the Method resource.



=head2 ResponseModels => L<Paws::ApiGateway::MapOfStringToString>

Specifies the Model resources used for the response's content type.
Response models are represented as a key/value map, with a content type
as the key and a Model name as the value.



=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

Represents response parameters that can be sent back to the caller by
Amazon API Gateway. Response parameters are represented as a key/value
map, with a destination as the key and a Boolean flag as the value. The
Boolean flag is used to specify whether the parameter is required. A
destination must match the pattern C<method.response.header.{name}>,
where C<name> is a valid, unique header name. Destinations specified
here are available to the integration for mapping from integration
response parameters.



=head2 B<REQUIRED> RestApiId => Str

The RestApi identifier for the Method resource.



=head2 B<REQUIRED> StatusCode => Str

The method response's status code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMethodResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

