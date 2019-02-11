
package Paws::Robomaker::ListRobotApplicationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RobotApplicationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::RobotApplicationSummary]', traits => ['NameInRequest'], request_name => 'robotApplicationSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListRobotApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRobotApplications>
request. When the results of a C<ListRobotApplications> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 RobotApplicationSummaries => ArrayRef[L<Paws::Robomaker::RobotApplicationSummary>]

A list of robot application summaries that meet the criteria of the
request.


=head2 _request_id => Str


=cut

