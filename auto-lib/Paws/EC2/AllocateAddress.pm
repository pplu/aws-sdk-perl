
package Paws::EC2::AllocateAddress;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has PublicIpv4Pool => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AllocateAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateAddress - Arguments for method AllocateAddress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateAddress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AllocateAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateAddress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To allocate an Elastic IP address for EC2-VPC
    # This example allocates an Elastic IP address to use with an instance in a
    # VPC.
    my $AllocateAddressResult = $ec2->AllocateAddress(
      {
        'Domain' => 'vpc'
      }
    );

    # Results:
    my $AllocationId = $AllocateAddressResult->AllocationId;
    my $Domain       = $AllocateAddressResult->Domain;
    my $PublicIp     = $AllocateAddressResult->PublicIp;

    # Returns a L<Paws::EC2::AllocateAddressResult> object.
    # To allocate an Elastic IP address for EC2-Classic
    # This example allocates an Elastic IP address to use with an instance in
    # EC2-Classic.
    my $AllocateAddressResult = $ec2->AllocateAddress();

    # Results:
    my $Domain   = $AllocateAddressResult->Domain;
    my $PublicIp = $AllocateAddressResult->PublicIp;

    # Returns a L<Paws::EC2::AllocateAddressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AllocateAddress>

=head1 ATTRIBUTES


=head2 Address => Str

[EC2-VPC] The Elastic IP address to recover or an IPv4 address from an
address pool.



=head2 Domain => Str

Set to C<vpc> to allocate the address for use with instances in a VPC.

Default: The address is for use with instances in EC2-Classic.

Valid values are: C<"vpc">, C<"standard">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PublicIpv4Pool => Str

The ID of an address pool that you own. Use this parameter to let
Amazon EC2 select an address from the address pool. To specify a
specific address from the address pool, use the C<Address> parameter
instead.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateAddress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

