
package Paws::Lightsail::GetKeyPairsResult;
  use Moose;
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::KeyPair]', traits => ['NameInRequest'], request_name => 'keyPairs' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetKeyPairsResult

=head1 ATTRIBUTES


=head2 KeyPairs => ArrayRef[L<Paws::Lightsail::KeyPair>]

An array of key-value pairs containing information about the key pairs.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetKeyPairs> request
and specify the next page token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;