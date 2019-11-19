# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::GetQueryResultsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_QueryStatistics CloudWatchLogs_ResultField/;
  has Results => (is => 'ro', isa => ArrayRef[ArrayRef[CloudWatchLogs_ResultField]]);
  has Statistics => (is => 'ro', isa => CloudWatchLogs_QueryStatistics);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Results' => {
                              'class' => 'Paws::CloudWatchLogs::ResultField',
                              'type' => 'ArrayRef[ArrayRef[CloudWatchLogs_ResultField]]'
                            },
               'Statistics' => {
                                 'class' => 'Paws::CloudWatchLogs::QueryStatistics',
                                 'type' => 'CloudWatchLogs_QueryStatistics'
                               }
             },
  'NameInRequest' => {
                       'Statistics' => 'statistics',
                       'Status' => 'status',
                       'Results' => 'results'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetQueryResultsResponse

=head1 ATTRIBUTES


=head2 Results => ArrayRef[ArrayRef[CloudWatchLogs_ResultField]]

The log events that matched the query criteria during the most recent
time it ran.

The C<results> value is an array of arrays. Each log event is one
object in the top-level array. Each of these log event objects is an
array of C<field>/C<value> pairs.


=head2 Statistics => CloudWatchLogs_QueryStatistics

Includes the number of log events scanned by the query, the number of
log events that matched the query criteria, and the total number of
bytes in the log events that were scanned.


=head2 Status => Str

The status of the most recent running of the query. Possible values are
C<Cancelled>, C<Complete>, C<Failed>, C<Running>, C<Scheduled>,
C<Timeout>, and C<Unknown>.

Queries time out after 15 minutes of execution. To avoid having your
queries time out, reduce the time range being searched, or partition
your query into a number of queries.

Valid values are: C<"Scheduled">, C<"Running">, C<"Complete">, C<"Failed">, C<"Cancelled">
=head2 _request_id => Str


=cut

1;