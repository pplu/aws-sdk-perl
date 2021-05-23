
package Paws::IVS::ListPlaybackKeyPairsResponse;
  use Moose;
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Paws::IVS::PlaybackKeyPairSummary]', traits => ['NameInRequest'], request_name => 'keyPairs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListPlaybackKeyPairsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyPairs => ArrayRef[L<Paws::IVS::PlaybackKeyPairSummary>]

List of key pairs.


=head2 NextToken => Str

If there are more key pairs than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 _request_id => Str


=cut

