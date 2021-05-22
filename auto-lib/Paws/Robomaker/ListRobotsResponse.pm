
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

If the previous paginated request did not return all of the remaining
results, the response object's C<nextToken> parameter value is set to a
token. To retrieve the next set of results, call C<ListRobots> again
and assign that token to the request object's C<nextToken> parameter.
If there are no remaining results, the previous response object's
NextToken parameter is set to null.


=head2 Robots => ArrayRef[L<Paws::Robomaker::Robot>]

A list of robots that meet the criteria of the request.


=head2 _request_id => Str


=cut

