# Generated from json/callresult_class.tt

package Paws::MachineLearning::DescribeDataSourcesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MachineLearning::Types qw/MachineLearning_DataSource/;
  has NextToken => (is => 'ro', isa => Str);
  has Results => (is => 'ro', isa => ArrayRef[MachineLearning_DataSource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Results' => {
                              'class' => 'Paws::MachineLearning::DataSource',
                              'type' => 'ArrayRef[MachineLearning_DataSource]'
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

Paws::MachineLearning::DescribeDataSourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An ID of the next page in the paginated results that indicates at least
one more page follows.


=head2 Results => ArrayRef[MachineLearning_DataSource]

A list of C<DataSource> that meet the search criteria.


=head2 _request_id => Str


=cut

1;