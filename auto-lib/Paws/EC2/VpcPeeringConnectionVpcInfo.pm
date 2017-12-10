package Paws::EC2::VpcPeeringConnectionVpcInfo;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', request_name => 'cidrBlock', traits => ['NameInRequest']);
  has CidrBlockSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CidrBlock]', request_name => 'cidrBlockSet', traits => ['NameInRequest']);
  has Ipv6CidrBlockSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6CidrBlock]', request_name => 'ipv6CidrBlockSet', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PeeringOptions => (is => 'ro', isa => 'Paws::EC2::VpcPeeringConnectionOptionsDescription', request_name => 'peeringOptions', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcPeeringConnectionVpcInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcPeeringConnectionVpcInfo object:

  $service_obj->Method(Att1 => { CidrBlock => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcPeeringConnectionVpcInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrBlock => Str

  The IPv4 CIDR block for the VPC.


=head2 CidrBlockSet => ArrayRef[L<Paws::EC2::CidrBlock>]

  Information about the IPv4 CIDR blocks for the VPC.


=head2 Ipv6CidrBlockSet => ArrayRef[L<Paws::EC2::Ipv6CidrBlock>]

  The IPv6 CIDR block for the VPC.


=head2 OwnerId => Str

  The AWS account ID of the VPC owner.


=head2 PeeringOptions => L<Paws::EC2::VpcPeeringConnectionOptionsDescription>

  Information about the VPC peering connection options for the accepter
or requester VPC.


=head2 Region => Str

  The region in which the VPC is located.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
