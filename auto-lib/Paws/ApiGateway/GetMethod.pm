
package Paws::ApiGateway::GetMethod;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Method');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMethodResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetMethod - Arguments for method GetMethod on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMethod on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMethod.

As an example:

  $service_obj->GetMethod(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> HttpMethod => Str

  Specifies the put method request's HTTP method type.

=head2 B<REQUIRED> ResourceId => Str

  The Resource identifier for the Method resource.

=head2 B<REQUIRED> RestApiId => Str

  The RestApi identifier for the Method resource.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

