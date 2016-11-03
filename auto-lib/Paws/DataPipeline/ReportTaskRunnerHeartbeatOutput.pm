
package Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput;
  use Moose;
  has Terminate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'terminate' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Terminate => Bool

Indicates whether the calling task runner should terminate.




=cut

1;