
package Paws::ApiGateway::GetSdkType;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSdkType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdktypes/{sdktype_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::SdkType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetSdkType - Arguments for method GetSdkType on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSdkType on the 
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetSdkType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSdkType.

As an example:

  $service_obj->GetSdkType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

[Required] The identifier of the queried SdkType instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSdkType in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

