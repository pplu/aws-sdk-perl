package Paws::EC2::NetworkInterface;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAssociation', request_name => 'association', traits => ['NameInRequest']);
  has Attachment => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAttachment', request_name => 'attachment', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest']);
  has InterfaceType => (is => 'ro', isa => 'Str', request_name => 'interfaceType', traits => ['NameInRequest']);
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterfaceIpv6Address]', request_name => 'ipv6AddressesSet', traits => ['NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', request_name => 'macAddress', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterfacePrivateIpAddress]', request_name => 'privateIpAddressesSet', traits => ['NameInRequest']);
  has RequesterId => (is => 'ro', isa => 'Str', request_name => 'requesterId', traits => ['NameInRequest']);
  has RequesterManaged => (is => 'ro', isa => 'Bool', request_name => 'requesterManaged', traits => ['NameInRequest']);
  has SourceDestCheck => (is => 'ro', isa => 'Bool', request_name => 'sourceDestCheck', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterface object:

  $service_obj->Method(Att1 => { Association => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::NetworkInterfaceAssociation>

  The association information for an Elastic IP address (IPv4) associated
with the network interface.


=head2 Attachment => L<Paws::EC2::NetworkInterfaceAttachment>

  The network interface attachment.


=head2 AvailabilityZone => Str

  The Availability Zone.


=head2 Description => Str

  A description.


=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

  Any security groups for the network interface.


=head2 InterfaceType => Str

  The type of interface.


=head2 Ipv6Addresses => ArrayRef[L<Paws::EC2::NetworkInterfaceIpv6Address>]

  The IPv6 addresses associated with the network interface.


=head2 MacAddress => Str

  The MAC address.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 OwnerId => Str

  The AWS account ID of the owner of the network interface.


=head2 PrivateDnsName => Str

  The private DNS name.


=head2 PrivateIpAddress => Str

  The IPv4 address of the network interface within the subnet.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::NetworkInterfacePrivateIpAddress>]

  The private IPv4 addresses associated with the network interface.


=head2 RequesterId => Str

  The ID of the entity that launched the instance on your behalf (for
example, AWS Management Console or Auto Scaling).


=head2 RequesterManaged => Bool

  Indicates whether the network interface is being managed by AWS.


=head2 SourceDestCheck => Bool

  Indicates whether traffic to or from the instance is validated.


=head2 Status => Str

  The status of the network interface.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 TagSet => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the network interface.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
