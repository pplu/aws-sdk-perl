
package Paws::CloudWatchLogs::CreateExportTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'taskId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateExportTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

Id of the export task that got created.


=head2 _request_id => Str


=cut

1;