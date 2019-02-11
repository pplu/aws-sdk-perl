
package Paws::MediaLive::ListReservationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Reservations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::Reservation]', traits => ['NameInRequest'], request_name => 'reservations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListReservationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to retrieve the next page of results


=head2 Reservations => ArrayRef[L<Paws::MediaLive::Reservation>]

List of reservations


=head2 _request_id => Str


=cut

