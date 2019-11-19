# Generated from json/callresult_class.tt

package Paws::Forecast::ListDatasetGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_DatasetGroupSummary/;
  has DatasetGroups => (is => 'ro', isa => ArrayRef[Forecast_DatasetGroupSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DatasetGroups' => {
                                    'type' => 'ArrayRef[Forecast_DatasetGroupSummary]',
                                    'class' => 'Paws::Forecast::DatasetGroupSummary'
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

Paws::Forecast::ListDatasetGroupsResponse

=head1 ATTRIBUTES


=head2 DatasetGroups => ArrayRef[Forecast_DatasetGroupSummary]

An array of objects that summarize each dataset group's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;