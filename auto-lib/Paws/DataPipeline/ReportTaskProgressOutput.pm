
package Paws::DataPipeline::ReportTaskProgressOutput;
  use Moose;
  has Canceled => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'canceled' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ReportTaskProgressOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Canceled => Bool

If true, the calling task runner should cancel processing of the task.
The task runner does not need to call SetTaskStatus for canceled tasks.




=cut

1;