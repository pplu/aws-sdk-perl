
package Paws::Glue::DeleteWorkflowResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteWorkflowResponse

=head1 ATTRIBUTES


=head2 Name => Str

Name of the workflow specified in input.


=head2 _request_id => Str


=cut

1;