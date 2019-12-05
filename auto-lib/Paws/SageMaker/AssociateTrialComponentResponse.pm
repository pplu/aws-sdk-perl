
package Paws::SageMaker::AssociateTrialComponentResponse;
  use Moose;
  has TrialArn => (is => 'ro', isa => 'Str');
  has TrialComponentArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AssociateTrialComponentResponse

=head1 ATTRIBUTES


=head2 TrialArn => Str

The Amazon Resource Name (ARN) of the trial.


=head2 TrialComponentArn => Str

The ARN of the trial component.


=head2 _request_id => Str


=cut

1;