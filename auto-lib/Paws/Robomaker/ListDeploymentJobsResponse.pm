
package Paws::Robomaker::ListDeploymentJobsResponse;
  use Moose;
  has DeploymentJobs => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DeploymentJob]', traits => ['NameInRequest'], request_name => 'deploymentJobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListDeploymentJobsResponse

=head1 ATTRIBUTES


=head2 DeploymentJobs => ArrayRef[L<Paws::Robomaker::DeploymentJob>]

A list of deployment jobs that meet the criteria of the request.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListDeploymentJobs>
request. When the results of a C<ListDeploymentJobs> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

