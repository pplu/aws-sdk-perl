
package Paws::IVS::ImportPlaybackKeyPairResponse;
  use Moose;
  has KeyPair => (is => 'ro', isa => 'Paws::IVS::PlaybackKeyPair', traits => ['NameInRequest'], request_name => 'keyPair');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ImportPlaybackKeyPairResponse

=head1 ATTRIBUTES


=head2 KeyPair => L<Paws::IVS::PlaybackKeyPair>




=head2 _request_id => Str


=cut

