package Paws::EC2::InstanceNetworkInterfaceSpecification;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', request_name => 'associatePublicIpAddress', traits => ['NameInRequest']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceIndex => (is => 'ro', isa => 'Int', request_name => 'deviceIndex', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has Ipv6AddressCount => (is => 'ro', isa => 'Int', request_name => 'ipv6AddressCount', traits => ['NameInRequest']);
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6Address]', request_name => 'ipv6AddressesSet', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]', request_name => 'privateIpAddressesSet', traits => ['NameInRequest']);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', request_name => 'secondaryPrivateIpAddressCount', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterfaceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterfaceSpecification object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterfaceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  Indicates whether to assign a public IPv4 address to an instance you
launch in a VPC. The public IP address can only be assigned to a
network interface for eth0, and can only be assigned to a new network
interface, not an existing one. You cannot specify more than one
network interface in the request. If launching into a default subnet,
the default value is C<true>.


=head2 DeleteOnTermination => Bool

  If set to C<true>, the interface is deleted when the instance is
terminated. You can specify C<true> only if creating a new network
interface when launching an instance.


=head2 Description => Str

  The description of the network interface. Applies only if creating a
network interface when launching an instance.


=head2 DeviceIndex => Int

  The index of the device on the instance for the network interface
attachment. If you are specifying a network interface in a RunInstances
request, you must provide the device index.


=head2 Groups => ArrayRef[Str|Undef]

  The IDs of the security groups for the network interface. Applies only
if creating a network interface when launching an instance.


=head2 Ipv6AddressCount => Int

  A number of IPv6 addresses to assign to the network interface. Amazon
EC2 chooses the IPv6 addresses from the range of the subnet. You cannot
specify this option and the option to assign specific IPv6 addresses in
the same request. You can specify this option if you've specified a
minimum number of instances to launch.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

  One or more IPv6 addresses to assign to the network interface. You
cannot specify this option and the option to assign a number of IPv6
addresses in the same request. You cannot specify this option if you've
specified a minimum number of instances to launch.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The private IPv4 address of the network interface. Applies only if
creating a network interface when launching an instance. You cannot
specify this option if you're launching more than one instance in a
RunInstances request.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

  One or more private IPv4 addresses to assign to the network interface.
Only one private IPv4 address can be designated as primary. You cannot
specify this option if you're launching more than one instance in a
RunInstances request.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IPv4 addresses. You can't specify this
option and specify more than one private IP address using the private
IP addresses option. You cannot specify this option if you're launching
more than one instance in a RunInstances request.


=head2 SubnetId => Str

  The ID of the subnet associated with the network string. Applies only
if creating a network interface when launching an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
