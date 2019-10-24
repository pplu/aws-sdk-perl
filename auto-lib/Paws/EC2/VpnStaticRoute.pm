package Paws::EC2::VpnStaticRoute;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has DestinationCidrBlock => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationCidrBlock' => {
                                           'type' => 'Str'
                                         },
               'Source' => {
                             'type' => 'Str'
                           },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'DestinationCidrBlock' => 'destinationCidrBlock',
                       'Source' => 'source',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnStaticRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnStaticRoute object:

  $service_obj->Method(Att1 => { DestinationCidrBlock => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnStaticRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

  The CIDR block associated with the local subnet of the customer data
center.


=head2 Source => Str

  Indicates how the routes were provided.


=head2 State => Str

  The current state of the static route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
