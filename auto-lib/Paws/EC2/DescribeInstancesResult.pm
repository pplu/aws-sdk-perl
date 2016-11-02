
package Paws::EC2::DescribeInstancesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);
  has Reservations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Reservation]', xmlname => 'reservationSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstancesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Reservations => ArrayRef[L<Paws::EC2::Reservation>]

Zero or more reservations.


=head2 _request_id => Str


=cut

