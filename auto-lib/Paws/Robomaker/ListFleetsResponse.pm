
package Paws::Robomaker::ListFleetsResponse;
  use Moose;
  has FleetDetails => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Fleet]', traits => ['NameInRequest'], request_name => 'fleetDetails');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListFleetsResponse

=head1 ATTRIBUTES


=head2 FleetDetails => ArrayRef[L<Paws::Robomaker::Fleet>]

A list of fleet details meeting the request criteria.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListDeploymentJobs>
request. When the results of a C<ListFleets> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

