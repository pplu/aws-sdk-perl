
package Paws::IoTAnalytics::ListDatasetContentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetContentSummary/;
  has DatasetContentSummaries => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetContentSummary]);
  has NextToken => (is => 'ro', isa => Str);

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
               'DatasetContentSummaries' => {
                                              'class' => 'Paws::IoTAnalytics::DatasetContentSummary',
                                              'type' => 'ArrayRef[IoTAnalytics_DatasetContentSummary]'
                                            }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DatasetContentSummaries' => 'datasetContentSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatasetContentsResponse

=head1 ATTRIBUTES


=head2 DatasetContentSummaries => ArrayRef[IoTAnalytics_DatasetContentSummary]

Summary information about data set contents that have been created.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

