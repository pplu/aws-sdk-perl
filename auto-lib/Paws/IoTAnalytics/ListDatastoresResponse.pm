
package Paws::IoTAnalytics::ListDatastoresResponse;
  use Moose;
  has DatastoreSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatastoreSummary]', traits => ['NameInRequest'], request_name => 'datastoreSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatastoresResponse

=head1 ATTRIBUTES


=head2 DatastoreSummaries => ArrayRef[L<Paws::IoTAnalytics::DatastoreSummary>]

A list of "DatastoreSummary" objects.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

