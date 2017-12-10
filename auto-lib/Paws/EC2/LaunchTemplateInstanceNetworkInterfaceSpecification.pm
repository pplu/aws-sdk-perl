package Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', request_name => 'associatePublicIpAddress', traits => ['NameInRequest']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceIndex => (is => 'ro', isa => 'Int', request_name => 'deviceIndex', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'groupSet', traits => ['NameInRequest']);
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

Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  Indicates whether to associate a public IPv4 address with eth0 for a
new network interface.


=head2 DeleteOnTermination => Bool

  Indicates whether the network interface is deleted when the instance is
terminated.


=head2 Description => Str

  A description for the network interface.


=head2 DeviceIndex => Int

  The device index for the network interface attachment.


=head2 Groups => ArrayRef[Str|Undef]

  The IDs of one or more security groups.


=head2 Ipv6AddressCount => Int

  The number of IPv6 addresses for the network interface.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]

  The IPv6 addresses for the network interface.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The primary private IPv4 address of the network interface.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

  One or more private IPv4 addresses.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IPv4 addresses for the network
interface.


=head2 SubnetId => Str

  The ID of the subnet for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
