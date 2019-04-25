package Paws::GuardDuty::NetworkInterface;
  use Moose;
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ipv6Addresses', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::PrivateIpAddressDetails]', request_name => 'privateIpAddresses', traits => ['NameInRequest']);
  has PublicDnsName => (is => 'ro', isa => 'Str', request_name => 'publicDnsName', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::SecurityGroup]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::NetworkInterface object:

  $service_obj->Method(Att1 => { Ipv6Addresses => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv6Addresses

=head1 DESCRIPTION

The network interface information of the EC2 instance.

=head1 ATTRIBUTES


=head2 Ipv6Addresses => ArrayRef[Str|Undef]

  A list of EC2 instance IPv6 address information.


=head2 NetworkInterfaceId => Str

  The ID of the network interface


=head2 PrivateDnsName => Str

  Private DNS name of the EC2 instance.


=head2 PrivateIpAddress => Str

  Private IP address of the EC2 instance.


=head2 PrivateIpAddresses => ArrayRef[L<Paws::GuardDuty::PrivateIpAddressDetails>]

  Other private IP address information of the EC2 instance.


=head2 PublicDnsName => Str

  Public DNS name of the EC2 instance.


=head2 PublicIp => Str

  Public IP address of the EC2 instance.


=head2 SecurityGroups => ArrayRef[L<Paws::GuardDuty::SecurityGroup>]

  Security groups associated with the EC2 instance.


=head2 SubnetId => Str

  The subnet ID of the EC2 instance.


=head2 VpcId => Str

  The VPC ID of the EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

