# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::GetLogGroupFieldsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_LogGroupField/;
  has LogGroupFields => (is => 'ro', isa => ArrayRef[CloudWatchLogs_LogGroupField]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogGroupFields' => {
                                     'class' => 'Paws::CloudWatchLogs::LogGroupField',
                                     'type' => 'ArrayRef[CloudWatchLogs_LogGroupField]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LogGroupFields' => 'logGroupFields'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogGroupFieldsResponse

=head1 ATTRIBUTES


=head2 LogGroupFields => ArrayRef[CloudWatchLogs_LogGroupField]

The array of fields found in the query. Each object in the array
contains the name of the field, along with the percentage of time it
appeared in the log events that were queried.


=head2 _request_id => Str


=cut

1;