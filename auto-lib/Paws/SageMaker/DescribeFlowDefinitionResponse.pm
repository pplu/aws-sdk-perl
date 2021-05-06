
package Paws::SageMaker::DescribeFlowDefinitionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has FlowDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has FlowDefinitionStatus => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopActivationConfig => (is => 'ro', isa => 'Paws::SageMaker::HumanLoopActivationConfig');
  has HumanLoopConfig => (is => 'ro', isa => 'Paws::SageMaker::HumanLoopConfig', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::FlowDefinitionOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeFlowDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The timestamp when the flow definition was created.


=head2 FailureReason => Str




=head2 B<REQUIRED> FlowDefinitionArn => Str

The Amazon Resource Name (ARN) of the flow defintion.


=head2 B<REQUIRED> FlowDefinitionName => Str

The Amazon Resource Name (ARN) of the flow definition.


=head2 B<REQUIRED> FlowDefinitionStatus => Str

The status of the flow definition. Valid values are listed below.

Valid values are: C<"Initializing">, C<"Active">, C<"Failed">, C<"Deleting">, C<"Deleted">
=head2 HumanLoopActivationConfig => L<Paws::SageMaker::HumanLoopActivationConfig>

An object containing information about what triggers a human review
workflow.


=head2 B<REQUIRED> HumanLoopConfig => L<Paws::SageMaker::HumanLoopConfig>

An object containing information about who works on the task, the
workforce task price, and other task details.


=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::FlowDefinitionOutputConfig>

An object containing information about the output file.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) execution role for the flow definition.


=head2 _request_id => Str


=cut

1;