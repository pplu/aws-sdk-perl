
package Paws::StepFunctions::DescribeExecutionOutput;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'executionArn' , required => 1);
  has Input => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'input' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name' );
  has Output => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'output' );
  has StartDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startDate' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'stateMachineArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status' , required => 1);
  has StopDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'stopDate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> Input => Str

The JSON input data of the execution.


=head2 Name => Str

The name of the execution.


=head2 Output => Str

The JSON output data of the execution.


=head2 B<REQUIRED> StartDate => Str

The date the execution was started.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the executed stated machine.


=head2 B<REQUIRED> Status => Str

The current status of the execution.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"ABORTED">
=head2 StopDate => Str

If the execution has already ended, the date the execution stopped.


=head2 _request_id => Str


=cut

1;