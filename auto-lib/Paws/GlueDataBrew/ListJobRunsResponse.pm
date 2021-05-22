
package Paws::GlueDataBrew::ListJobRunsResponse;
  use Moose;
  has JobRuns => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::JobRun]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListJobRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobRuns => ArrayRef[L<Paws::GlueDataBrew::JobRun>]

A list of job runs that have occurred for the specified job.


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 _request_id => Str


=cut

