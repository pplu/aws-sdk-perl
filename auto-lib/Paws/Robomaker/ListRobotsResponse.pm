
package Paws::Robomaker::ListRobotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Robots => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Robot]', traits => ['NameInRequest'], request_name => 'robots');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListRobotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRobots> request.
When the results of a C<ListRobot> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Robots => ArrayRef[L<Paws::Robomaker::Robot>]

A list of robots that meet the criteria of the request.


=head2 _request_id => Str


=cut

