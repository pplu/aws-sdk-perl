package Paws::EC2::TargetReservationValue;
  use Moo;  use Types::Standard qw//;
  use Paws::EC2::Types qw/EC2_TargetConfiguration EC2_ReservationValue/;
  has ReservationValue => (is => 'ro', isa => EC2_ReservationValue);
  has TargetConfiguration => (is => 'ro', isa => EC2_TargetConfiguration);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservationValue' => {
                                       'class' => 'Paws::EC2::ReservationValue',
                                       'type' => 'EC2_ReservationValue'
                                     },
               'TargetConfiguration' => {
                                          'class' => 'Paws::EC2::TargetConfiguration',
                                          'type' => 'EC2_TargetConfiguration'
                                        }
             },
  'NameInRequest' => {
                       'ReservationValue' => 'reservationValue',
                       'TargetConfiguration' => 'targetConfiguration'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TargetReservationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TargetReservationValue object:

  $service_obj->Method(Att1 => { ReservationValue => $value, ..., TargetConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TargetReservationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ReservationValue

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReservationValue => EC2_ReservationValue

  The total value of the Convertible Reserved Instances that make up the
exchange. This is the sum of the list value, remaining upfront price,
and additional upfront cost of the exchange.


=head2 TargetConfiguration => EC2_TargetConfiguration

  The configuration of the Convertible Reserved Instances that make up
the exchange.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
