package Paws::EC2::PublicIpv4PoolRange;
  use Moo;  use Types::Standard qw/Int Str/;
  use Paws::EC2::Types qw//;
  has AddressCount => (is => 'ro', isa => Int);
  has AvailableAddressCount => (is => 'ro', isa => Int);
  has FirstAddress => (is => 'ro', isa => Str);
  has LastAddress => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AvailableAddressCount' => {
                                            'type' => 'Int'
                                          },
               'FirstAddress' => {
                                   'type' => 'Str'
                                 },
               'LastAddress' => {
                                  'type' => 'Str'
                                },
               'AddressCount' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'AvailableAddressCount' => 'availableAddressCount',
                       'FirstAddress' => 'firstAddress',
                       'LastAddress' => 'lastAddress',
                       'AddressCount' => 'addressCount'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PublicIpv4PoolRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PublicIpv4PoolRange object:

  $service_obj->Method(Att1 => { AddressCount => $value, ..., LastAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PublicIpv4PoolRange object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressCount

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddressCount => Int

  The number of addresses in the range.


=head2 AvailableAddressCount => Int

  The number of available addresses in the range.


=head2 FirstAddress => Str

  The first IP address in the range.


=head2 LastAddress => Str

  The last IP address in the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
