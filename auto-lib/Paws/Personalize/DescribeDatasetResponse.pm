# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeDatasetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_Dataset/;
  has Dataset => (is => 'ro', isa => Personalize_Dataset);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Dataset' => 'dataset'
                     },
  'types' => {
               'Dataset' => {
                              'type' => 'Personalize_Dataset',
                              'class' => 'Paws::Personalize::Dataset'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 Dataset => Personalize_Dataset

A listing of the dataset's properties.


=head2 _request_id => Str


=cut

1;