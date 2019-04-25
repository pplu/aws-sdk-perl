
package Paws::EC2::UnassignIpv6Addresses;
  use Moose;
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ipv6Addresses' , required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignIpv6Addresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::UnassignIpv6AddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnassignIpv6Addresses - Arguments for method UnassignIpv6Addresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnassignIpv6Addresses on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method UnassignIpv6Addresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnassignIpv6Addresses.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $UnassignIpv6AddressesResult = $ec2->UnassignIpv6Addresses(
      Ipv6Addresses      => [ 'MyString', ... ],
      NetworkInterfaceId => 'MyString',

    );

    # Results:
    my $NetworkInterfaceId = $UnassignIpv6AddressesResult->NetworkInterfaceId;
    my $UnassignedIpv6Addresses =
      $UnassignIpv6AddressesResult->UnassignedIpv6Addresses;

    # Returns a L<Paws::EC2::UnassignIpv6AddressesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/UnassignIpv6Addresses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ipv6Addresses => ArrayRef[Str|Undef]

The IPv6 addresses to unassign from the network interface.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnassignIpv6Addresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

