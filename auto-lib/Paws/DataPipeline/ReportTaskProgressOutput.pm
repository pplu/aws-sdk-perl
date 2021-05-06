
package Paws::DataPipeline::ReportTaskProgressOutput;
  use Moose;
  has Canceled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'canceled' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ReportTaskProgressOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Canceled => Bool

If true, the calling task runner should cancel processing of the task.
The task runner does not need to call SetTaskStatus for canceled tasks.


=head2 _request_id => Str


=cut

1;