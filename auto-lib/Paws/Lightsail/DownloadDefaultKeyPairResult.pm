
package Paws::Lightsail::DownloadDefaultKeyPairResult;
  use Moose;
  has PrivateKeyBase64 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateKeyBase64' );
  has PublicKeyBase64 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyBase64' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DownloadDefaultKeyPairResult

=head1 ATTRIBUTES


=head2 PrivateKeyBase64 => Str

A base64-encoded RSA private key.


=head2 PublicKeyBase64 => Str

A base64-encoded public key of the C<ssh-rsa> type.


=head2 _request_id => Str


=cut

1;