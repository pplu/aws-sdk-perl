
package Paws::MachineLearning::PredictOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Prediction => (is => 'ro', isa => 'Paws::MachineLearning::Prediction');

}

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::PredictOutput

=head1 ATTRIBUTES

=head2 Prediction => Paws::MachineLearning::Prediction

  


=cut

1;