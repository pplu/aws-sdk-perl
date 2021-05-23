
package Paws::SageMakerA2IRuntime::DescribeHumanLoopResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureCode => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopName => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopOutput => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopOutput');
  has HumanLoopStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::DescribeHumanLoopResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The creation time when Amazon Augmented AI created the human loop.


=head2 FailureCode => Str

A failure code that identifies the type of failure.

Possible values: C<ValidationError>, C<Expired>, C<InternalError>


=head2 FailureReason => Str

The reason why a human loop failed. The failure reason is returned when
the status of the human loop is C<Failed>.


=head2 B<REQUIRED> FlowDefinitionArn => Str

The Amazon Resource Name (ARN) of the flow definition.


=head2 B<REQUIRED> HumanLoopArn => Str

The Amazon Resource Name (ARN) of the human loop.


=head2 B<REQUIRED> HumanLoopName => Str

The name of the human loop. The name must be lowercase, unique within
the Region in your account, and can have up to 63 characters. Valid
characters: a-z, 0-9, and - (hyphen).


=head2 HumanLoopOutput => L<Paws::SageMakerA2IRuntime::HumanLoopOutput>

An object that contains information about the output of the human loop.


=head2 B<REQUIRED> HumanLoopStatus => Str

The status of the human loop.

Valid values are: C<"InProgress">, C<"Failed">, C<"Completed">, C<"Stopped">, C<"Stopping">
=head2 _request_id => Str


=cut

