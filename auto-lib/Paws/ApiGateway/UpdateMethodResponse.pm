
package Paws::ApiGateway::UpdateMethodResponse;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statusCode', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMethodResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::MethodResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateMethodResponse - Arguments for method UpdateMethodResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMethodResponse on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method UpdateMethodResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMethodResponse.

As an example:

  $service_obj->UpdateMethodResponse(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] The HTTP verb of the Method resource.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> ResourceId => Str

[Required] The Resource identifier for the MethodResponse resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StatusCode => Str

[Required] The status code for the MethodResponse resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMethodResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

