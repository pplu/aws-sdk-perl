
package Paws::Glue::StartWorkflowRunResponse;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartWorkflowRunResponse

=head1 ATTRIBUTES


=head2 RunId => Str

An Id for the new run.


=head2 _request_id => Str


=cut

1;