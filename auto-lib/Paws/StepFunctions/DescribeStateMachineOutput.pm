
package Paws::StepFunctions::DescribeStateMachineOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' , required => 1);
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::LoggingConfiguration', traits => ['NameInRequest'], request_name => 'loggingConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TracingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::TracingConfiguration', traits => ['NameInRequest'], request_name => 'tracingConfiguration' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine is created.


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).


=head2 LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>




=head2 B<REQUIRED> Name => Str

The name of the state machine.

A name must I<not> contain:

=over

=item *

white space

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back

To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used when creating this
state machine. (The IAM role maintains security by granting Step
Functions access to AWS resources.)


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the state machine.


=head2 Status => Str

The current status of the state machine.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>

Selects whether AWS X-Ray tracing is enabled.


=head2 B<REQUIRED> Type => Str

The C<type> of the state machine (C<STANDARD> or C<EXPRESS>).

Valid values are: C<"STANDARD">, C<"EXPRESS">
=head2 _request_id => Str


=cut

1;