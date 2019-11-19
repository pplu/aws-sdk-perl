# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::FilterLogEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_SearchedLogStream CloudWatchLogs_FilteredLogEvent/;
  has Events => (is => 'ro', isa => ArrayRef[CloudWatchLogs_FilteredLogEvent]);
  has NextToken => (is => 'ro', isa => Str);
  has SearchedLogStreams => (is => 'ro', isa => ArrayRef[CloudWatchLogs_SearchedLogStream]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Events' => 'events',
                       'SearchedLogStreams' => 'searchedLogStreams'
                     },
  'types' => {
               'Events' => {
                             'type' => 'ArrayRef[CloudWatchLogs_FilteredLogEvent]',
                             'class' => 'Paws::CloudWatchLogs::FilteredLogEvent'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SearchedLogStreams' => {
                                         'type' => 'ArrayRef[CloudWatchLogs_SearchedLogStream]',
                                         'class' => 'Paws::CloudWatchLogs::SearchedLogStream'
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

Paws::CloudWatchLogs::FilterLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[CloudWatchLogs_FilteredLogEvent]

The matched events.


=head2 NextToken => Str

The token to use when requesting the next set of items. The token
expires after 24 hours.


=head2 SearchedLogStreams => ArrayRef[CloudWatchLogs_SearchedLogStream]

Indicates which log streams have been searched and whether each has
been searched completely.


=head2 _request_id => Str


=cut

1;