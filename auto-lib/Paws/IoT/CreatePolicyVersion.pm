
package Paws::IoT::CreatePolicyVersion;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName' , required => 1);
  has SetAsDefault => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsDefault' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicyVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{policyName}/version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreatePolicyVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePolicyVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePolicyVersion - Arguments for method CreatePolicyVersion on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicyVersion on the 
AWS IoT service. Use the attributes of this class
as arguments to method CreatePolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicyVersion.

As an example:

  $service_obj->CreatePolicyVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyDocument => Str

The JSON document that describes the policy. Minimum length of 1.
Maximum length of 2048 excluding whitespaces



=head2 B<REQUIRED> PolicyName => Str

The policy name.



=head2 SetAsDefault => Bool

Specifies whether the policy version is set as the default. When this
parameter is true, the new policy version becomes the operative
version; that is, the version that is in effect for the certificates
that the policy is attached to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicyVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

