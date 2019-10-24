# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::GetLogEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_OutputLogEvent/;
  has Events => (is => 'ro', isa => ArrayRef[CloudWatchLogs_OutputLogEvent]);
  has NextBackwardToken => (is => 'ro', isa => Str);
  has NextForwardToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::CloudWatchLogs::OutputLogEvent',
                             'type' => 'ArrayRef[CloudWatchLogs_OutputLogEvent]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextForwardToken' => {
                                       'type' => 'Str'
                                     },
               'NextBackwardToken' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'Events' => 'events',
                       'NextForwardToken' => 'nextForwardToken',
                       'NextBackwardToken' => 'nextBackwardToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[CloudWatchLogs_OutputLogEvent]

The events.


=head2 NextBackwardToken => Str

The token for the next set of items in the backward direction. The
token expires after 24 hours. This token will never be null. If you
have reached the end of the stream, it will return the same token you
passed in.


=head2 NextForwardToken => Str

The token for the next set of items in the forward direction. The token
expires after 24 hours. If you have reached the end of the stream, it
will return the same token you passed in.


=head2 _request_id => Str


=cut

1;