
package Paws::Lightsail::GetActiveNamesResult;
  use Moose;
  has ActiveNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'activeNames' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetActiveNamesResult

=head1 ATTRIBUTES


=head2 ActiveNames => ArrayRef[Str|Undef]

The list of active names returned by the get active names request.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetActiveNames>
request and specify the next page token using the C<pageToken>
parameter.


=head2 _request_id => Str


=cut

1;