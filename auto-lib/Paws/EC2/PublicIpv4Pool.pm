package Paws::EC2::PublicIpv4Pool;
  use Moo;  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::EC2::Types qw/EC2_PublicIpv4PoolRange/;
  has Description => (is => 'ro', isa => Str);
  has PoolAddressRanges => (is => 'ro', isa => ArrayRef[EC2_PublicIpv4PoolRange]);
  has PoolId => (is => 'ro', isa => Str);
  has TotalAddressCount => (is => 'ro', isa => Int);
  has TotalAvailableAddressCount => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PoolAddressRanges' => {
                                        'class' => 'Paws::EC2::PublicIpv4PoolRange',
                                        'type' => 'ArrayRef[EC2_PublicIpv4PoolRange]'
                                      },
               'TotalAvailableAddressCount' => {
                                                 'type' => 'Int'
                                               },
               'PoolId' => {
                             'type' => 'Str'
                           },
               'TotalAddressCount' => {
                                        'type' => 'Int'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PoolAddressRanges' => 'poolAddressRangeSet',
                       'TotalAvailableAddressCount' => 'totalAvailableAddressCount',
                       'PoolId' => 'poolId',
                       'TotalAddressCount' => 'totalAddressCount',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

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


=head2 PoolAddressRanges => ArrayRef[EC2_PublicIpv4PoolRange]

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
