package Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SecurityGroupId', traits => ['NameInRequest']);
  has Ipv6AddressCount => (is => 'ro', isa => 'Int');
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceIpv6AddressRequest]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  Associates a public IPv4 address with eth0 for a new network interface.


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

  The number of IPv6 addresses to assign to a network interface. Amazon
EC2 automatically selects the IPv6 addresses from the subnet range. You
can't use this option if specifying specific IPv6 addresses.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6AddressRequest>]

  One or more specific IPv6 addresses from the IPv6 CIDR block range of
your subnet. You can't use this option if you're specifying a number of
IPv6 addresses.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The primary private IPv4 address of the network interface.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

  One or more private IPv4 addresses.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IPv4 addresses to assign to a network
interface.


=head2 SubnetId => Str

  The ID of the subnet for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
