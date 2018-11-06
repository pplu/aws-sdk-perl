
package Paws::EC2::CreateCapacityReservationResult;
  use Moose;
  has CapacityReservation => (is => 'ro', isa => 'Paws::EC2::CapacityReservation', request_name => 'capacityReservation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCapacityReservationResult

=head1 ATTRIBUTES


=head2 CapacityReservation => L<Paws::EC2::CapacityReservation>

Information about the Capacity Reservation.


=head2 _request_id => Str


=cut

