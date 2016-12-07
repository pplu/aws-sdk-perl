
package Paws::StepFunctions::DescribeStateMachineOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'creationDate' , required => 1);
  has Definition => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'definition' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'roleArn' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'stateMachineArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine was created.


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine.


=head2 B<REQUIRED> Name => Str

The name of the state machine.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used for executing this
state machine.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the state machine.


=head2 Status => Str

The current status of the state machine.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

1;