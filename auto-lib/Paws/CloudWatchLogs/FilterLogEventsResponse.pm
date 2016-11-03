
package Paws::CloudWatchLogs::FilterLogEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::FilteredLogEvent]', traits => ['NameInRequest'], request_name => 'events' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SearchedLogStreams => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::SearchedLogStream]', traits => ['NameInRequest'], request_name => 'searchedLogStreams' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::FilterLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::CloudWatchLogs::FilteredLogEvent>]

A list of C<FilteredLogEvent> objects representing the matched events
from the request.



=head2 NextToken => Str

A pagination token obtained from a C<FilterLogEvents> response to
continue paginating the FilterLogEvents results. This token is omitted
from the response when there are no other events to display.



=head2 SearchedLogStreams => ArrayRef[L<Paws::CloudWatchLogs::SearchedLogStream>]

A list of C<SearchedLogStream> objects indicating which log streams
have been searched in this request and whether each has been searched
completely or still has more to be paginated.




=cut

1;