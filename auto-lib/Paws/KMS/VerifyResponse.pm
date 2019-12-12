
package Paws::KMS::VerifyResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has SignatureValid => (is => 'ro', isa => 'Bool');
  has SigningAlgorithm => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::VerifyResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

The unique identifier for the asymmetric CMK that was used to verify
the signature.


=head2 SignatureValid => Bool

A Boolean value that indicates whether the signature was verified. A
value of C<True> indicates that the C<Signature> was produced by
signing the C<Message> with the specified C<KeyID> and
C<SigningAlgorithm.> If the signature is not verified, the C<Verify>
operation fails with a C<KMSInvalidSignatureException> exception.


=head2 SigningAlgorithm => Str

The signing algorithm that was used to verify the signature.

Valid values are: C<"RSASSA_PSS_SHA_256">, C<"RSASSA_PSS_SHA_384">, C<"RSASSA_PSS_SHA_512">, C<"RSASSA_PKCS1_V1_5_SHA_256">, C<"RSASSA_PKCS1_V1_5_SHA_384">, C<"RSASSA_PKCS1_V1_5_SHA_512">, C<"ECDSA_SHA_256">, C<"ECDSA_SHA_384">, C<"ECDSA_SHA_512">
=head2 _request_id => Str


=cut

1;