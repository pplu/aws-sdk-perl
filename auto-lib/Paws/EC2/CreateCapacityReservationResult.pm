
package Paws::EC2::CreateCapacityReservationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_CapacityReservation/;
  has CapacityReservation => (is => 'ro', isa => EC2_CapacityReservation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CapacityReservation' => {
                                          'class' => 'Paws::EC2::CapacityReservation',
                                          'type' => 'EC2_CapacityReservation'
                                        }
             },
  'NameInRequest' => {
                       'CapacityReservation' => 'capacityReservation'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCapacityReservationResult

=head1 ATTRIBUTES


=head2 CapacityReservation => EC2_CapacityReservation

Information about the Capacity Reservation.


=head2 _request_id => Str


=cut

