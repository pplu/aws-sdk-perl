
package Paws::Glue::GetMLTaskRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::TaskRun]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTaskRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 TaskRuns => ArrayRef[L<Paws::Glue::TaskRun>]

A list of task runs that are associated with the transform.


=head2 _request_id => Str


=cut

1;