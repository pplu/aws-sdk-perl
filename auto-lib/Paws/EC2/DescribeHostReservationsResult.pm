
package Paws::EC2::DescribeHostReservationsResult;
  use Moose;
  has HostReservationSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::HostReservation]', request_name => 'hostReservationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostReservationsResult

=head1 ATTRIBUTES


=head2 HostReservationSet => ArrayRef[L<Paws::EC2::HostReservation>]

Details about the reservation's configuration.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

