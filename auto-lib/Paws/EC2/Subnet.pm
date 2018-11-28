package Paws::EC2::Subnet;
  use Moose;
  has AssignIpv6AddressOnCreation => (is => 'ro', isa => 'Bool', request_name => 'assignIpv6AddressOnCreation', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', request_name => 'availableIpAddressCount', traits => ['NameInRequest']);
  has CidrBlock => (is => 'ro', isa => 'Str', request_name => 'cidrBlock', traits => ['NameInRequest']);
  has DefaultForAz => (is => 'ro', isa => 'Bool', request_name => 'defaultForAz', traits => ['NameInRequest']);
  has Ipv6CidrBlockAssociationSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SubnetIpv6CidrBlockAssociation]', request_name => 'ipv6CidrBlockAssociationSet', traits => ['NameInRequest']);
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Bool', request_name => 'mapPublicIpOnLaunch', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SubnetArn => (is => 'ro', isa => 'Str', request_name => 'subnetArn', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Subnet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Subnet object:

  $service_obj->Method(Att1 => { AssignIpv6AddressOnCreation => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Subnet object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignIpv6AddressOnCreation

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssignIpv6AddressOnCreation => Bool

  Indicates whether a network interface created in this subnet (including
a network interface created by RunInstances) receives an IPv6 address.


=head2 AvailabilityZone => Str

  The Availability Zone of the subnet.


=head2 AvailabilityZoneId => Str

  The AZ ID of the subnet.


=head2 AvailableIpAddressCount => Int

  The number of unused private IPv4 addresses in the subnet. The IPv4
addresses for any stopped instances are considered unavailable.


=head2 CidrBlock => Str

  The IPv4 CIDR block assigned to the subnet.


=head2 DefaultForAz => Bool

  Indicates whether this is the default subnet for the Availability Zone.


=head2 Ipv6CidrBlockAssociationSet => ArrayRef[L<Paws::EC2::SubnetIpv6CidrBlockAssociation>]

  Information about the IPv6 CIDR blocks associated with the subnet.


=head2 MapPublicIpOnLaunch => Bool

  Indicates whether instances launched in this subnet receive a public
IPv4 address.


=head2 OwnerId => Str

  The ID of the AWS account that owns the subnet.


=head2 State => Str

  The current state of the subnet.


=head2 SubnetArn => Str

  The Amazon Resource Name (ARN) of the subnet.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the subnet.


=head2 VpcId => Str

  The ID of the VPC the subnet is in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
