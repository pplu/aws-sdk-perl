# Generated from json/callresult_class.tt

package Paws::MachineLearning::DescribeMLModelsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MachineLearning::Types qw/MachineLearning_MLModel/;
  has NextToken => (is => 'ro', isa => Str);
  has Results => (is => 'ro', isa => ArrayRef[MachineLearning_MLModel]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Results' => {
                              'type' => 'ArrayRef[MachineLearning_MLModel]',
                              'class' => 'Paws::MachineLearning::MLModel'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DescribeMLModelsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The ID of the next page in the paginated results that indicates at
least one more page follows.


=head2 Results => ArrayRef[MachineLearning_MLModel]

A list of C<MLModel> that meet the search criteria.


=head2 _request_id => Str


=cut

1;