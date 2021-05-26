
package Paws::SageMaker::UpdateTrialComponentResponse;
  use Moose;
  has TrialComponentArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateTrialComponentResponse

=head1 ATTRIBUTES


=head2 TrialComponentArn => Str

The Amazon Resource Name (ARN) of the trial component.


=head2 _request_id => Str


=cut

1;