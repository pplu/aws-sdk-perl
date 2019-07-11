
package Paws::Glue::GetWorkflowRunPropertiesResponse;
  use Moose;
  has RunProperties => (is => 'ro', isa => 'Paws::Glue::WorkflowRunProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowRunPropertiesResponse

=head1 ATTRIBUTES


=head2 RunProperties => L<Paws::Glue::WorkflowRunProperties>

The workflow run properties which were set during the specified run.


=head2 _request_id => Str


=cut

1;