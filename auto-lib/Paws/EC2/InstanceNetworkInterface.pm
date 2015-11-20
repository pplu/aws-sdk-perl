package Paws::EC2::InstanceNetworkInterface;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkInterfaceAssociation', xmlname => 'association', traits => ['Unwrapped']);
  has Attachment => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkInterfaceAttachment', xmlname => 'attachment', traits => ['Unwrapped']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', xmlname => 'groupSet', traits => ['Unwrapped']);
  has MacAddress => (is => 'ro', isa => 'Str', xmlname => 'macAddress', traits => ['Unwrapped']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', xmlname => 'networkInterfaceId', traits => ['Unwrapped']);
  has OwnerId => (is => 'ro', isa => 'Str', xmlname => 'ownerId', traits => ['Unwrapped']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', xmlname => 'privateDnsName', traits => ['Unwrapped']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', traits => ['Unwrapped']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstancePrivateIpAddress]', xmlname => 'privateIpAddressesSet', traits => ['Unwrapped']);
  has SourceDestCheck => (is => 'ro', isa => 'Bool', xmlname => 'sourceDestCheck', traits => ['Unwrapped']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped']);
  has SubnetId => (is => 'ro', isa => 'Str', xmlname => 'subnetId', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterface object:

  $service_obj->Method(Att1 => { Association => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::InstanceNetworkInterfaceAssociation>

  The association information for an Elastic IP associated with the
network interface.


=head2 Attachment => L<Paws::EC2::InstanceNetworkInterfaceAttachment>

  The network interface attachment.


=head2 Description => Str

  The description.


=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

  One or more security groups.


=head2 MacAddress => Str

  The MAC address.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 OwnerId => Str

  The ID of the AWS account that created the network interface.


=head2 PrivateDnsName => Str

  The private DNS name.


=head2 PrivateIpAddress => Str

  The IP address of the network interface within the subnet.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::InstancePrivateIpAddress>]

  The private IP addresses associated with the network interface.


=head2 SourceDestCheck => Bool

  Indicates whether to validate network traffic to or from this network
interface.


=head2 Status => Str

  The status of the network interface.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
