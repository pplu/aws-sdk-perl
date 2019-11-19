
package Paws::IoTAnalytics::ListDatastoresResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatastoreSummary/;
  has DatastoreSummaries => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatastoreSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatastoreSummaries' => {
                                         'type' => 'ArrayRef[IoTAnalytics_DatastoreSummary]',
                                         'class' => 'Paws::IoTAnalytics::DatastoreSummary'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DatastoreSummaries' => 'datastoreSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatastoresResponse

=head1 ATTRIBUTES


=head2 DatastoreSummaries => ArrayRef[IoTAnalytics_DatastoreSummary]

A list of "DatastoreSummary" objects.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

