
package Paws::Glue::StartImportLabelsTaskRunResponse;
  use Moose;
  has TaskRunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartImportLabelsTaskRunResponse

=head1 ATTRIBUTES


=head2 TaskRunId => Str

The unique identifier for the task run.


=head2 _request_id => Str


=cut

1;