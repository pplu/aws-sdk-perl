
package Paws::SageMakerA2IRuntime::StartHumanLoopResponse;
  use Moose;
  has HumanLoopActivationResults => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopActivationResults');
  has HumanLoopArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::StartHumanLoopResponse

=head1 ATTRIBUTES


=head2 HumanLoopActivationResults => L<Paws::SageMakerA2IRuntime::HumanLoopActivationResults>

An object containing information about the human loop activation.


=head2 HumanLoopArn => Str

The Amazon Resource Name (ARN) of the human loop.


=head2 _request_id => Str


=cut

