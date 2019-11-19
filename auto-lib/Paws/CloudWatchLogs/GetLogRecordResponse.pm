# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::GetLogRecordResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_LogRecord/;
  has LogRecord => (is => 'ro', isa => CloudWatchLogs_LogRecord);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LogRecord' => 'logRecord'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LogRecord' => {
                                'class' => 'Paws::CloudWatchLogs::LogRecord',
                                'type' => 'CloudWatchLogs_LogRecord'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogRecordResponse

=head1 ATTRIBUTES


=head2 LogRecord => CloudWatchLogs_LogRecord

The requested log event, as a JSON string.


=head2 _request_id => Str


=cut

1;