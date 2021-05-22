
package Paws::NimbleStudio::ListStreamingSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::StreamingSession]', traits => ['NameInRequest'], request_name => 'sessions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListStreamingSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 Sessions => ArrayRef[L<Paws::NimbleStudio::StreamingSession>]

A collection of streaming sessions.


=head2 _request_id => Str


=cut

