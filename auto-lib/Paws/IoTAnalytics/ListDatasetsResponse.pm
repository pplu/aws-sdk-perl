
package Paws::IoTAnalytics::ListDatasetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetSummary/;
  has DatasetSummaries => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DatasetSummaries' => 'datasetSummaries',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatasetSummaries' => {
                                       'type' => 'ArrayRef[IoTAnalytics_DatasetSummary]',
                                       'class' => 'Paws::IoTAnalytics::DatasetSummary'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 DatasetSummaries => ArrayRef[IoTAnalytics_DatasetSummary]

A list of "DatasetSummary" objects.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

