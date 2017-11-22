
package Paws::StepFunctions::DescribeExecutionOutput;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Output => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'output' );
  has StartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDate' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);
  has StopDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopDate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> Input => Str

The string that contains the JSON input data of the execution.


=head2 Name => Str

The name of the execution.

A name must I<not> contain:

=over

=item *

whitespace

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back



=head2 Output => Str

The JSON output data of the execution.

This field is set only if the execution succeeds. If the execution
fails, this field is null.


=head2 B<REQUIRED> StartDate => Str

The date the execution is started.


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