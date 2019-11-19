# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeDatasetGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_DatasetGroup/;
  has DatasetGroup => (is => 'ro', isa => Personalize_DatasetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatasetGroup' => {
                                   'type' => 'Personalize_DatasetGroup',
                                   'class' => 'Paws::Personalize::DatasetGroup'
                                 }
             },
  'NameInRequest' => {
                       'DatasetGroup' => 'datasetGroup'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetGroupResponse

=head1 ATTRIBUTES


=head2 DatasetGroup => Personalize_DatasetGroup

A listing of the dataset group's properties.


=head2 _request_id => Str


=cut

1;