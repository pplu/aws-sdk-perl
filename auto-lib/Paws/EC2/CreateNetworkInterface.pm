
package Paws::EC2::CreateNetworkInterface;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has Ipv6AddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ipv6AddressCount' );
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', traits => ['NameInRequest'], request_name => 'ipv6Addresses' );
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]', traits => ['NameInRequest'], request_name => 'privateIpAddresses' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'secondaryPrivateIpAddressCount' );
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateNetworkInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterface - Arguments for method CreateNetworkInterface on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkInterface on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateNetworkInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkInterface.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a network interface
    # This example creates a network interface for the specified subnet.
    my $CreateNetworkInterfaceResult = $ec2->CreateNetworkInterface(
      {
        'Description'      => 'my network interface',
        'Groups'           => ['sg-903004f8'],
        'PrivateIpAddress' => '10.0.2.17',
        'SubnetId'         => 'subnet-9d4a7b6c'
      }
    );

    # Results:
    my $NetworkInterface = $CreateNetworkInterfaceResult->NetworkInterface;

    # Returns a L<Paws::EC2::CreateNetworkInterfaceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateNetworkInterface>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the network interface.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Groups => ArrayRef[Str|Undef]

The IDs of one or more security groups.



=head2 Ipv6AddressCount => Int

The number of IPv6 addresses to assign to a network interface. Amazon
EC2 automatically selects the IPv6 addresses from the subnet range. You
can't use this option if specifying specific IPv6 addresses. If your
subnet has the C<AssignIpv6AddressOnCreation> attribute set to C<true>,
you can specify C<0> to override this setting.



=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

One or more specific IPv6 addresses from the IPv6 CIDR block range of
your subnet. You can't use this option if you're specifying a number of
IPv6 addresses.



=head2 PrivateIpAddress => Str

The primary private IPv4 address of the network interface. If you don't
specify an IPv4 address, Amazon EC2 selects one for you from the
subnet's IPv4 CIDR range. If you specify an IP address, you cannot
indicate any IP addresses specified in C<privateIpAddresses> as primary
(only one IP address can be designated as primary).



=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

One or more private IPv4 addresses.



=head2 SecondaryPrivateIpAddressCount => Int

The number of secondary private IPv4 addresses to assign to a network
interface. When you specify a number of secondary IPv4 addresses,
Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR
range. You can't specify this option and specify more than one private
IP address using C<privateIpAddresses>.

The number of IP addresses you can assign to a network interface varies
by instance type. For more information, see IP Addresses Per ENI Per
Instance Type
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
in the I<Amazon Virtual Private Cloud User Guide>.



=head2 B<REQUIRED> SubnetId => Str

The ID of the subnet to associate with the network interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkInterface in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

