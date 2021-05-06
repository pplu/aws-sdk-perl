
package Paws::CloudWatchLogs::FilterLogEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::FilteredLogEvent]', traits => ['NameInRequest'], request_name => 'events' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SearchedLogStreams => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::SearchedLogStream]', traits => ['NameInRequest'], request_name => 'searchedLogStreams' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::FilterLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::CloudWatchLogs::FilteredLogEvent>]

The matched events.


=head2 NextToken => Str

The token to use when requesting the next set of items. The token
expires after 24 hours.


=head2 SearchedLogStreams => ArrayRef[L<Paws::CloudWatchLogs::SearchedLogStream>]

Indicates which log streams have been searched and whether each has
been searched completely.


=head2 _request_id => Str


=cut

1;