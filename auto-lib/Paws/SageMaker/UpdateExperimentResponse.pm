
package Paws::SageMaker::UpdateExperimentResponse;
  use Moose;
  has ExperimentArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateExperimentResponse

=head1 ATTRIBUTES


=head2 ExperimentArn => Str

The Amazon Resource Name (ARN) of the experiment.


=head2 _request_id => Str


=cut

1;