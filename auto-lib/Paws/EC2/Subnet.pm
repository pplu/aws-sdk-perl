package Paws::EC2::Subnet;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped']);
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', xmlname => 'availableIpAddressCount', traits => ['Unwrapped']);
  has CidrBlock => (is => 'ro', isa => 'Str', xmlname => 'cidrBlock', traits => ['Unwrapped']);
  has DefaultForAz => (is => 'ro', isa => 'Bool', xmlname => 'defaultForAz', traits => ['Unwrapped']);
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Bool', xmlname => 'mapPublicIpOnLaunch', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
  has SubnetId => (is => 'ro', isa => 'Str', xmlname => 'subnetId', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
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

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Subnet object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone of the subnet.


=head2 AvailableIpAddressCount => Int

  The number of unused IP addresses in the subnet. Note that the IP
addresses for any stopped instances are considered unavailable.


=head2 CidrBlock => Str

  The CIDR block assigned to the subnet.


=head2 DefaultForAz => Bool

  Indicates whether this is the default subnet for the Availability Zone.


=head2 MapPublicIpOnLaunch => Bool

  Indicates whether instances launched in this subnet receive a public IP
address.


=head2 State => Str

  The current state of the subnet.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the subnet.


=head2 VpcId => Str

  The ID of the VPC the subnet is in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
