package Paws::EC2::Ipv6Pool;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has PoolCidrBlocks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PoolCidrBlock]', request_name => 'poolCidrBlockSet', traits => ['NameInRequest']);
  has PoolId => (is => 'ro', isa => 'Str', request_name => 'poolId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Ipv6Pool

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Ipv6Pool object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Ipv6Pool object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The description for the address pool.


=head2 PoolCidrBlocks => ArrayRef[L<Paws::EC2::PoolCidrBlock>]

The CIDR blocks for the address pool.


=head2 PoolId => Str

The ID of the address pool.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags for the address pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
