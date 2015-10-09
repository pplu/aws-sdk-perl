
package Paws::IoT::DetachPrincipalPolicy;
  use Moose;
  has policyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName' , required => 1);
  has principal => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-iot-principal' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachPrincipalPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/principal-policies/{policyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DetachPrincipalPolicy - Arguments for method DetachPrincipalPolicy on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachPrincipalPolicy on the 
AWS IoT service. Use the attributes of this class
as arguments to method DetachPrincipalPolicy.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DetachPrincipalPolicy.

As an example:

  $service_obj->DetachPrincipalPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> policyName => Str

  

The name of the policy to detach.










=head2 B<REQUIRED> principal => Str

  

The principal

If the principal is a certificate, specify the certificate ARN. If the
principal is a Cognito identity specify the identity ID.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachPrincipalPolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

