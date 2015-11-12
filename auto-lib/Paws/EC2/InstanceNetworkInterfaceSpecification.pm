package Paws::EC2::InstanceNetworkInterfaceSpecification;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', xmlname => 'associatePublicIpAddress', traits => ['Unwrapped']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', xmlname => 'deleteOnTermination', traits => ['Unwrapped']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has DeviceIndex => (is => 'ro', isa => 'Int', xmlname => 'deviceIndex', traits => ['Unwrapped']);
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'SecurityGroupId', traits => ['Unwrapped']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', xmlname => 'networkInterfaceId', traits => ['Unwrapped']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', traits => ['Unwrapped']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrivateIpAddressSpecification]', xmlname => 'privateIpAddressesSet', traits => ['Unwrapped']);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', xmlname => 'secondaryPrivateIpAddressCount', traits => ['Unwrapped']);
  has SubnetId => (is => 'ro', isa => 'Str', xmlname => 'subnetId', traits => ['Unwrapped']);
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

  Indicates whether to assign a public IP address to an instance you
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


=head2 Groups => ArrayRef[Str]

  The IDs of the security groups for the network interface. Applies only
if creating a network interface when launching an instance.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The private IP address of the network interface. Applies only if
creating a network interface when launching an instance.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]

  One or more private IP addresses to assign to the network interface.
Only one private IP address can be designated as primary.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IP addresses. You can't specify this
option and specify more than one private IP address using the private
IP addresses option.


=head2 SubnetId => Str

  The ID of the subnet associated with the network string. Applies only
if creating a network interface when launching an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
