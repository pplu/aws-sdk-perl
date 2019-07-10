
package Paws::Glue::CreateWorkflowResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateWorkflowResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the workflow which was provided as part of the request.


=head2 _request_id => Str


=cut

1;