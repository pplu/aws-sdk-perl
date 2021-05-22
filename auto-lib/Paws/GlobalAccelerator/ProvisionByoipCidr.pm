
package Paws::GlobalAccelerator::ProvisionByoipCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has CidrAuthorizationContext => (is => 'ro', isa => 'Paws::GlobalAccelerator::CidrAuthorizationContext', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionByoipCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ProvisionByoipCidrResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ProvisionByoipCidr - Arguments for method ProvisionByoipCidr on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionByoipCidr on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ProvisionByoipCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionByoipCidr.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ProvisionByoipCidrResponse = $globalaccelerator->ProvisionByoipCidr(
      Cidr                     => 'MyGenericString',
      CidrAuthorizationContext => {
        Message   => 'MyGenericString',    # max: 255
        Signature => 'MyGenericString',    # max: 255

      },

    );

    # Results:
    my $ByoipCidr = $ProvisionByoipCidrResponse->ByoipCidr;

    # Returns a L<Paws::GlobalAccelerator::ProvisionByoipCidrResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ProvisionByoipCidr>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The public IPv4 address range, in CIDR notation. The most specific IP
prefix that you can specify is /24. The address range cannot overlap
with another address range that you've brought to this or another
Region.



=head2 B<REQUIRED> CidrAuthorizationContext => L<Paws::GlobalAccelerator::CidrAuthorizationContext>

A signed document that proves that you are authorized to bring the
specified IP address range to Amazon using BYOIP.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionByoipCidr in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

