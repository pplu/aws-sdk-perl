package Paws::EC2::PublicIpv4Pool;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has PoolAddressRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PublicIpv4PoolRange]', request_name => 'poolAddressRangeSet', traits => ['NameInRequest']);
  has PoolId => (is => 'ro', isa => 'Str', request_name => 'poolId', traits => ['NameInRequest']);
  has TotalAddressCount => (is => 'ro', isa => 'Int', request_name => 'totalAddressCount', traits => ['NameInRequest']);
  has TotalAvailableAddressCount => (is => 'ro', isa => 'Int', request_name => 'totalAvailableAddressCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PublicIpv4Pool

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PublicIpv4Pool object:

  $service_obj->Method(Att1 => { Description => $value, ..., TotalAvailableAddressCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PublicIpv4Pool object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the address pool.


=head2 PoolAddressRanges => ArrayRef[L<Paws::EC2::PublicIpv4PoolRange>]

  The address ranges.


=head2 PoolId => Str

  The ID of the IPv4 address pool.


=head2 TotalAddressCount => Int

  The total number of addresses.


=head2 TotalAvailableAddressCount => Int

  The total number of available addresses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
