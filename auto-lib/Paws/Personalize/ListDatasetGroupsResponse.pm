# Generated from json/callresult_class.tt

package Paws::Personalize::ListDatasetGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_DatasetGroupSummary/;
  has DatasetGroups => (is => 'ro', isa => ArrayRef[Personalize_DatasetGroupSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetGroups' => {
                                    'class' => 'Paws::Personalize::DatasetGroupSummary',
                                    'type' => 'ArrayRef[Personalize_DatasetGroupSummary]'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DatasetGroups' => 'datasetGroups',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetGroupsResponse

=head1 ATTRIBUTES


=head2 DatasetGroups => ArrayRef[Personalize_DatasetGroupSummary]

The list of your dataset groups.


=head2 NextToken => Str

A token for getting the next set of dataset groups (if they exist).


=head2 _request_id => Str


=cut

1;