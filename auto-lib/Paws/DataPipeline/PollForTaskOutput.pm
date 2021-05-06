
package Paws::DataPipeline::PollForTaskOutput;
  use Moose;
  has TaskObject => (is => 'ro', isa => 'Paws::DataPipeline::TaskObject', traits => ['NameInRequest'], request_name => 'taskObject' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PollForTaskOutput

=head1 ATTRIBUTES


=head2 TaskObject => L<Paws::DataPipeline::TaskObject>

The information needed to complete the task that is being assigned to
the task runner. One of the fields returned in this object is
C<taskId>, which contains an identifier for the task being assigned.
The calling task runner uses C<taskId> in subsequent calls to
ReportTaskProgress and SetTaskStatus.


=head2 _request_id => Str


=cut

1;