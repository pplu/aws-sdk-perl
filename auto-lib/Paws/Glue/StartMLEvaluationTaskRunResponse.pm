
package Paws::Glue::StartMLEvaluationTaskRunResponse;
  use Moose;
  has TaskRunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartMLEvaluationTaskRunResponse

=head1 ATTRIBUTES


=head2 TaskRunId => Str

The unique identifier associated with this run.


=head2 _request_id => Str


=cut

1;