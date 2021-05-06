
package Paws::SageMakerA2IRuntime::DescribeHumanLoopResponse;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has FailureCode => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopInput => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopInputContent', required => 1);
  has HumanLoopName => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopOutput => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopOutputContent');
  has HumanLoopStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::DescribeHumanLoopResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTimestamp => Str

The timestamp when Amazon Augmented AI created the human loop.


=head2 FailureCode => Str

A failure code denoting a specific type of failure.


=head2 FailureReason => Str

The reason why a human loop has failed. The failure reason is returned
when the human loop status is C<Failed>.


=head2 B<REQUIRED> FlowDefinitionArn => Str

The Amazon Resource Name (ARN) of the flow definition.


=head2 B<REQUIRED> HumanLoopArn => Str

The Amazon Resource Name (ARN) of the human loop.


=head2 B<REQUIRED> HumanLoopInput => L<Paws::SageMakerA2IRuntime::HumanLoopInputContent>

An object containing information about the human loop input.


=head2 B<REQUIRED> HumanLoopName => Str

The name of the human loop.


=head2 HumanLoopOutput => L<Paws::SageMakerA2IRuntime::HumanLoopOutputContent>

An object containing information about the output of the human loop.


=head2 B<REQUIRED> HumanLoopStatus => Str

The status of the human loop. Valid values:

Valid values are: C<"InProgress">, C<"Failed">, C<"Completed">, C<"Stopped">, C<"Stopping">
=head2 _request_id => Str


=cut

