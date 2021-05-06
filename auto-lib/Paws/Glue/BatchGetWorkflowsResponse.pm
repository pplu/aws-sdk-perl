
package Paws::Glue::BatchGetWorkflowsResponse;
  use Moose;
  has MissingWorkflows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Workflows => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Workflow]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetWorkflowsResponse

=head1 ATTRIBUTES


=head2 MissingWorkflows => ArrayRef[Str|Undef]

A list of names of workflows not found.


=head2 Workflows => ArrayRef[L<Paws::Glue::Workflow>]

A list of workflow resource metadata.


=head2 _request_id => Str


=cut

1;