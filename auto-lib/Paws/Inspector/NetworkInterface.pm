package Paws::Inspector::NetworkInterface;
  use Moose;
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ipv6Addresses', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::PrivateIp]', request_name => 'privateIpAddresses', traits => ['NameInRequest']);
  has PublicDnsName => (is => 'ro', isa => 'Str', request_name => 'publicDnsName', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::SecurityGroup]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::NetworkInterface object:

  $service_obj->Method(Att1 => { Ipv6Addresses => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv6Addresses

=head1 DESCRIPTION

Contains information about the network interfaces interacting with an
EC2 instance. This data type is used as one of the elements of the
AssetAttributes data type.

=head1 ATTRIBUTES


=head2 Ipv6Addresses => ArrayRef[Str|Undef]

  The IP addresses associated with the network interface.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateDnsName => Str

  The name of a private DNS associated with the network interface.


=head2 PrivateIpAddress => Str

  The private IP address associated with the network interface.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::Inspector::PrivateIp>]

  A list of the private IP addresses associated with the network
interface. Includes the privateDnsName and privateIpAddress.


=head2 PublicDnsName => Str

  The name of a public DNS associated with the network interface.


=head2 PublicIp => Str

  The public IP address from which the network interface is reachable.


=head2 SecurityGroups => ArrayRef[L<Paws::Inspector::SecurityGroup>]

  A list of the security groups associated with the network interface.
Includes the groupId and groupName.


=head2 SubnetId => Str

  The ID of a subnet associated with the network interface.


=head2 VpcId => Str

  The ID of a VPC associated with the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

