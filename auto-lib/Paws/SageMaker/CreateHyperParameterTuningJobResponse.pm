
package Paws::SageMaker::CreateHyperParameterTuningJobResponse;
  use Moose;
  has HyperParameterTuningJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHyperParameterTuningJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobArn => Str

The Amazon Resource Name (ARN) of the tuning job. Amazon SageMaker
assigns an ARN to a hyperparameter tuning job when you create it.


=head2 _request_id => Str


=cut

1;