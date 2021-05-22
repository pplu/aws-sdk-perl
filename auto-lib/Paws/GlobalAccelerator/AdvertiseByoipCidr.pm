
package Paws::GlobalAccelerator::AdvertiseByoipCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdvertiseByoipCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::AdvertiseByoipCidrResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AdvertiseByoipCidr - Arguments for method AdvertiseByoipCidr on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdvertiseByoipCidr on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method AdvertiseByoipCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdvertiseByoipCidr.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $AdvertiseByoipCidrResponse = $globalaccelerator->AdvertiseByoipCidr(
      Cidr => 'MyGenericString',

    );

    # Results:
    my $ByoipCidr = $AdvertiseByoipCidrResponse->ByoipCidr;

    # Returns a L<Paws::GlobalAccelerator::AdvertiseByoipCidrResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/AdvertiseByoipCidr>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The address range, in CIDR notation. This must be the exact range that
you provisioned. You can't advertise only a portion of the provisioned
range.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdvertiseByoipCidr in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

