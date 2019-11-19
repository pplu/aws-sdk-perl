# Generated from json/callresult_class.tt

package Paws::MachineLearning::DescribeBatchPredictionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MachineLearning::Types qw/MachineLearning_BatchPrediction/;
  has NextToken => (is => 'ro', isa => Str);
  has Results => (is => 'ro', isa => ArrayRef[MachineLearning_BatchPrediction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Results' => {
                              'type' => 'ArrayRef[MachineLearning_BatchPrediction]',
                              'class' => 'Paws::MachineLearning::BatchPrediction'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DescribeBatchPredictionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The ID of the next page in the paginated results that indicates at
least one more page follows.


=head2 Results => ArrayRef[MachineLearning_BatchPrediction]

A list of C<BatchPrediction> objects that meet the search criteria.


=head2 _request_id => Str


=cut

1;