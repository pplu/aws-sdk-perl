
package Paws::Lightsail::CreateKeyPairResult;
  use Moose;
  has KeyPair => (is => 'ro', isa => 'Paws::Lightsail::KeyPair', traits => ['NameInRequest'], request_name => 'keyPair' );
  has Operation => (is => 'ro', isa => 'Paws::Lightsail::Operation', traits => ['NameInRequest'], request_name => 'operation' );
  has PrivateKeyBase64 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateKeyBase64' );
  has PublicKeyBase64 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyBase64' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateKeyPairResult

=head1 ATTRIBUTES


=head2 KeyPair => L<Paws::Lightsail::KeyPair>

An array of key-value pairs containing information about the new key
pair you just created.


=head2 Operation => L<Paws::Lightsail::Operation>

An array of key-value pairs containing information about the results of
your create key pair request.


=head2 PrivateKeyBase64 => Str

A base64-encoded RSA private key.


=head2 PublicKeyBase64 => Str

A base64-encoded public key of the C<ssh-rsa> type.


=head2 _request_id => Str


=cut

1;