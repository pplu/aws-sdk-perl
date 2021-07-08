
package Paws::Glue::ResumeWorkflowRunResponse;
  use Moose;
  has NodeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ResumeWorkflowRunResponse

=head1 ATTRIBUTES


=head2 NodeIds => ArrayRef[Str|Undef]

A list of the node IDs for the nodes that were actually restarted.


=head2 RunId => Str

The new ID assigned to the resumed workflow run. Each resume of a
workflow run will have a new run ID.


=head2 _request_id => Str


=cut

1;