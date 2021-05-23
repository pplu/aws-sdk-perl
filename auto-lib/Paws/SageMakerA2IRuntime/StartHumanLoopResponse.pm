
package Paws::SageMakerA2IRuntime::StartHumanLoopResponse;
  use Moose;
  has HumanLoopArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::StartHumanLoopResponse

=head1 ATTRIBUTES


=head2 HumanLoopArn => Str

The Amazon Resource Name (ARN) of the human loop.


=head2 _request_id => Str


=cut

