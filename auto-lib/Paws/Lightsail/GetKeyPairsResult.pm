
package Paws::Lightsail::GetKeyPairsResult;
  use Moose;
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::KeyPair]', traits => ['Unwrapped'], xmlname => 'keyPairs' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetKeyPairsResult

=head1 ATTRIBUTES


=head2 KeyPairs => ArrayRef[L<Paws::Lightsail::KeyPair>]

An array of key-value pairs containing information about the key pairs.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
key pairs request.


=head2 _request_id => Str


=cut

1;