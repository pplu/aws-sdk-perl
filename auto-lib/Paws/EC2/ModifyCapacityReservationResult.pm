
package Paws::EC2::ModifyCapacityReservationResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyCapacityReservationResult

=head1 ATTRIBUTES


=head2 Return => Bool

Information about the Capacity Reservation.


=head2 _request_id => Str


=cut

