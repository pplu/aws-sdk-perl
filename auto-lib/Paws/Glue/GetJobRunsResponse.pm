
package Paws::Glue::GetJobRunsResponse;
  use Moose;
  has JobRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::JobRun]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobRunsResponse

=head1 ATTRIBUTES


=head2 JobRuns => ArrayRef[L<Paws::Glue::JobRun>]

A list of job-run metatdata objects.


=head2 NextToken => Str

A continuation token, if not all reequested job runs have been
returned.


=head2 _request_id => Str


=cut

1;