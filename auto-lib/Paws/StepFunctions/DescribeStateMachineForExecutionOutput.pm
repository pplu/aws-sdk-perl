
package Paws::StepFunctions::DescribeStateMachineForExecutionOutput;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineForExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(http://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).


=head2 B<REQUIRED> Name => Str

The name of the state machine associated with the execution.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role of the State Machine for
the execution.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine associated with the
execution.


=head2 B<REQUIRED> UpdateDate => Str

The date and time the state machine associated with an execution was
updated. For a newly created state machine, this is the creation date.


=head2 _request_id => Str


=cut

1;