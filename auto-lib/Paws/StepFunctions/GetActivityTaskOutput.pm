
package Paws::StepFunctions::GetActivityTaskOutput;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has TaskToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::GetActivityTaskOutput

=head1 ATTRIBUTES


=head2 Input => Str

The string that contains the JSON input data for the task.


=head2 TaskToken => Str

A token that identifies the scheduled task. This token must be copied
and included in subsequent calls to SendTaskHeartbeat, SendTaskSuccess
or SendTaskFailure in order to report the progress or completion of the
task.


=head2 _request_id => Str


=cut

1;