
package Paws::CloudWatchLogs::GetQueryResultsResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::CloudWatchLogs::ResultField]]', traits => ['NameInRequest'], request_name => 'results' );
  has Statistics => (is => 'ro', isa => 'Paws::CloudWatchLogs::QueryStatistics', traits => ['NameInRequest'], request_name => 'statistics' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetQueryResultsResponse

=head1 ATTRIBUTES


=head2 Results => ArrayRef[L<ArrayRef[Paws::CloudWatchLogs::ResultField]>]

The log events that matched the query criteria during the most recent
time it ran.

The C<results> value is an array of arrays. Each log event is one
object in the top-level array. Each of these log event objects is an
array of C<field>/C<value> pairs.


=head2 Statistics => L<Paws::CloudWatchLogs::QueryStatistics>

Includes the number of log events scanned by the query, the number of
log events that matched the query criteria, and the total number of
bytes in the log events that were scanned.


=head2 Status => Str

The status of the most recent running of the query. Possible values are
C<Cancelled>, C<Complete>, C<Failed>, C<Running>, C<Scheduled>, and
C<Unknown>.

Valid values are: C<"Scheduled">, C<"Running">, C<"Complete">, C<"Failed">, C<"Cancelled">
=head2 _request_id => Str


=cut

1;