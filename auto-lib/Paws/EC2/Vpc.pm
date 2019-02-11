package Paws::EC2::Vpc;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', request_name => 'cidrBlock', traits => ['NameInRequest']);
  has CidrBlockAssociationSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcCidrBlockAssociation]', request_name => 'cidrBlockAssociationSet', traits => ['NameInRequest']);
  has DhcpOptionsId => (is => 'ro', isa => 'Str', request_name => 'dhcpOptionsId', traits => ['NameInRequest']);
  has InstanceTenancy => (is => 'ro', isa => 'Str', request_name => 'instanceTenancy', traits => ['NameInRequest']);
  has Ipv6CidrBlockAssociationSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcIpv6CidrBlockAssociation]', request_name => 'ipv6CidrBlockAssociationSet', traits => ['NameInRequest']);
  has IsDefault => (is => 'ro', isa => 'Bool', request_name => 'isDefault', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Vpc

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Vpc object:

  $service_obj->Method(Att1 => { CidrBlock => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Vpc object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrBlock => Str

  The primary IPv4 CIDR block for the VPC.


=head2 CidrBlockAssociationSet => ArrayRef[L<Paws::EC2::VpcCidrBlockAssociation>]

  Information about the IPv4 CIDR blocks associated with the VPC.


=head2 DhcpOptionsId => Str

  The ID of the set of DHCP options you've associated with the VPC (or
C<default> if the default options are associated with the VPC).


=head2 InstanceTenancy => Str

  The allowed tenancy of instances launched into the VPC.


=head2 Ipv6CidrBlockAssociationSet => ArrayRef[L<Paws::EC2::VpcIpv6CidrBlockAssociation>]

  Information about the IPv6 CIDR blocks associated with the VPC.


=head2 IsDefault => Bool

  Indicates whether the VPC is the default VPC.


=head2 OwnerId => Str

  The ID of the AWS account that owns the VPC.


=head2 State => Str

  The current state of the VPC.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the VPC.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
