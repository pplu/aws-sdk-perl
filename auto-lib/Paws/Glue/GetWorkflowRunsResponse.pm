
package Paws::Glue::GetWorkflowRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Runs => (is => 'ro', isa => 'ArrayRef[Paws::Glue::WorkflowRun]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if not all requested workflow runs have been
returned.


=head2 Runs => ArrayRef[L<Paws::Glue::WorkflowRun>]

A list of workflow run metadata objects.


=head2 _request_id => Str


=cut

1;