
package Paws::MediaConnect::ListReservationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Reservations => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Reservation]', traits => ['NameInRequest'], request_name => 'reservations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListReservationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results that you want to see.
For example, you submit a ListReservations request with MaxResults set
at 5. The service returns the first batch of results (up to 5) and a
NextToken value. To see the next batch of results, you can submit the
ListReservations request a second time and specify the NextToken value.


=head2 Reservations => ArrayRef[L<Paws::MediaConnect::Reservation>]

A list of all reservations that have been purchased by this account in
the current AWS Region.


=head2 _request_id => Str


=cut

