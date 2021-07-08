
package Paws::StepFunctions::StartSyncExecutionOutput;
  use Moose;
  has BillingDetails => (is => 'ro', isa => 'Paws::StepFunctions::BillingDetails', traits => ['NameInRequest'], request_name => 'billingDetails' );
  has Cause => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cause' );
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error' );
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has InputDetails => (is => 'ro', isa => 'Paws::StepFunctions::CloudWatchEventsExecutionDataDetails', traits => ['NameInRequest'], request_name => 'inputDetails' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Output => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'output' );
  has OutputDetails => (is => 'ro', isa => 'Paws::StepFunctions::CloudWatchEventsExecutionDataDetails', traits => ['NameInRequest'], request_name => 'outputDetails' );
  has StartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDate' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);
  has StopDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopDate' , required => 1);
  has TraceHeader => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'traceHeader' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StartSyncExecutionOutput

=head1 ATTRIBUTES


=head2 BillingDetails => L<Paws::StepFunctions::BillingDetails>

An object that describes workflow billing details, including billed
duration and memory use.


=head2 Cause => Str

A more detailed explanation of the cause of the failure.


=head2 Error => Str

The error code of the failure.


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 Input => Str

The string that contains the JSON input data of the execution. Length
constraints apply to the payload size, and are expressed as bytes in
UTF-8 encoding.


=head2 InputDetails => L<Paws::StepFunctions::CloudWatchEventsExecutionDataDetails>




=head2 Name => Str

The name of the execution.


=head2 Output => Str

The JSON output data of the execution. Length constraints apply to the
payload size, and are expressed as bytes in UTF-8 encoding.

This field is set only if the execution succeeds. If the execution
fails, this field is null.


=head2 OutputDetails => L<Paws::StepFunctions::CloudWatchEventsExecutionDataDetails>




=head2 B<REQUIRED> StartDate => Str

The date the execution is started.


=head2 StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the state machine.


=head2 B<REQUIRED> Status => Str

The current status of the execution.

Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">
=head2 B<REQUIRED> StopDate => Str

If the execution has already ended, the date the execution stopped.


=head2 TraceHeader => Str

The AWS X-Ray trace header that was passed to the execution.


=head2 _request_id => Str


=cut

1;