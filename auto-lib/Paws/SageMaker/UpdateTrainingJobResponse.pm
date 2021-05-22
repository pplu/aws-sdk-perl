
package Paws::SageMaker::UpdateTrainingJobResponse;
  use Moose;
  has TrainingJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateTrainingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingJobArn => Str

The Amazon Resource Name (ARN) of the training job.


=head2 _request_id => Str


=cut

1;