
package Paws::IoT::DetachPrincipalPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);
  has Principal => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-iot-principal', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachPrincipalPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/principal-policies/{policyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DetachPrincipalPolicy - Arguments for method DetachPrincipalPolicy on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachPrincipalPolicy on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DetachPrincipalPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachPrincipalPolicy.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DetachPrincipalPolicy(
      PolicyName => 'MyPolicyName',
      Principal  => 'MyPrincipal',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DetachPrincipalPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the policy to detach.



=head2 B<REQUIRED> Principal => Str

The principal.

If the principal is a certificate, specify the certificate ARN. If the
principal is an Amazon Cognito identity, specify the identity ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachPrincipalPolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

