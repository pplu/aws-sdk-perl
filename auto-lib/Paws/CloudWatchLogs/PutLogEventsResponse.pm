# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::PutLogEventsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_RejectedLogEventsInfo/;
  has NextSequenceToken => (is => 'ro', isa => Str);
  has RejectedLogEventsInfo => (is => 'ro', isa => CloudWatchLogs_RejectedLogEventsInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RejectedLogEventsInfo' => {
                                            'class' => 'Paws::CloudWatchLogs::RejectedLogEventsInfo',
                                            'type' => 'CloudWatchLogs_RejectedLogEventsInfo'
                                          },
               'NextSequenceToken' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'NextSequenceToken' => 'nextSequenceToken',
                       'RejectedLogEventsInfo' => 'rejectedLogEventsInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEventsResponse

=head1 ATTRIBUTES


=head2 NextSequenceToken => Str

The next sequence token.


=head2 RejectedLogEventsInfo => CloudWatchLogs_RejectedLogEventsInfo

The rejected events.


=head2 _request_id => Str


=cut

1;