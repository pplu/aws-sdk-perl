
package Paws::MachineLearning::DescribeBatchPredictionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::MachineLearning::BatchPrediction]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DescribeBatchPredictionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The ID of the next page in the paginated results that indicates at
least one more page follows.


=head2 Results => ArrayRef[L<Paws::MachineLearning::BatchPrediction>]

A list of C<BatchPrediction> objects that meet the search criteria.


=head2 _request_id => Str


=cut

1;