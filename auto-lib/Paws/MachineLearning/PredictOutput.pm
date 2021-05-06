
package Paws::MachineLearning::PredictOutput;
  use Moose;
  has Prediction => (is => 'ro', isa => 'Paws::MachineLearning::Prediction');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::PredictOutput

=head1 ATTRIBUTES


=head2 Prediction => L<Paws::MachineLearning::Prediction>




=head2 _request_id => Str


=cut

1;