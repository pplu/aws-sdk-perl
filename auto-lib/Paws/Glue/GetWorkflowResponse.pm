
package Paws::Glue::GetWorkflowResponse;
  use Moose;
  has Workflow => (is => 'ro', isa => 'Paws::Glue::Workflow');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowResponse

=head1 ATTRIBUTES


=head2 Workflow => L<Paws::Glue::Workflow>

The resource metadata for the workflow.


=head2 _request_id => Str


=cut

1;