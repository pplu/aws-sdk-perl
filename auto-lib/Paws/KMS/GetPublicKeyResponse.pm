
package Paws::KMS::GetPublicKeyResponse;
  use Moose;
  has CustomerMasterKeySpec => (is => 'ro', isa => 'Str');
  has EncryptionAlgorithms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');
  has SigningAlgorithms => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetPublicKeyResponse

=head1 ATTRIBUTES


=head2 CustomerMasterKeySpec => Str

The type of the of the public key that was downloaded.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">, C<"SYMMETRIC_DEFAULT">
=head2 EncryptionAlgorithms => ArrayRef[Str|Undef]

The encryption algorithms that AWS KMS supports for this key.

This information is critical. If a public key encrypts data outside of
AWS KMS by using an unsupported encryption algorithm, the ciphertext
cannot be decrypted.

This field appears in the response only when the C<KeyUsage> of the
public key is C<ENCRYPT_DECRYPT>.


=head2 KeyId => Str

The identifier of the asymmetric CMK from which the public key was
downloaded.


=head2 KeyUsage => Str

The permitted use of the public key. Valid values are
C<ENCRYPT_DECRYPT> or C<SIGN_VERIFY>.

This information is critical. If a public key with C<SIGN_VERIFY> key
usage encrypts data outside of AWS KMS, the ciphertext cannot be
decrypted.

Valid values are: C<"SIGN_VERIFY">, C<"ENCRYPT_DECRYPT">
=head2 PublicKey => Str

The exported public key.

This value is returned as a binary Distinguished Encoding Rules
(https://www.itu.int/ITU-T/studygroups/com17/languages/X.690-0207.pdf)
(DER)-encoded object. To decode it, use an ASN.1 parsing tool, such as
OpenSSL asn1parse
(https://www.openssl.org/docs/man1.0.2/man1/asn1parse.html).


=head2 SigningAlgorithms => ArrayRef[Str|Undef]

The signing algorithms that AWS KMS supports for this key.

This field appears in the response only when the C<KeyUsage> of the
public key is C<SIGN_VERIFY>.


=head2 _request_id => Str


=cut

1;