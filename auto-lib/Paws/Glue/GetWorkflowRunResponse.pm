
package Paws::Glue::GetWorkflowRunResponse;
  use Moose;
  has Run => (is => 'ro', isa => 'Paws::Glue::WorkflowRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowRunResponse

=head1 ATTRIBUTES


=head2 Run => L<Paws::Glue::WorkflowRun>

The requested workflow run metadata.


=head2 _request_id => Str


=cut

1;