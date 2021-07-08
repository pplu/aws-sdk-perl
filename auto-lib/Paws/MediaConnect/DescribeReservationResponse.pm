
package Paws::MediaConnect::DescribeReservationResponse;
  use Moose;
  has Reservation => (is => 'ro', isa => 'Paws::MediaConnect::Reservation', traits => ['NameInRequest'], request_name => 'reservation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeReservationResponse

=head1 ATTRIBUTES


=head2 Reservation => L<Paws::MediaConnect::Reservation>




=head2 _request_id => Str


=cut

