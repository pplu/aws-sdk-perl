
package Paws::KMS::SignResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SigningAlgorithm => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::SignResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the asymmetric CMK that was used to sign the message.


=head2 Signature => Str

The cryptographic signature that was generated for the message.

=over

=item *

When used with the supported RSA signing algorithms, the encoding of
this value is defined by PKCS #1 in RFC 8017
(https://tools.ietf.org/html/rfc8017).

=item *

When used with the C<ECDSA_SHA_256>, C<ECDSA_SHA_384>, or
C<ECDSA_SHA_512> signing algorithms, this value is a DER-encoded object
as defined by ANS X9.62E<ndash>2005 and RFC 3279 Section 2.2.3
(https://tools.ietf.org/html/rfc3279#section-2.2.3). This is the most
commonly used signature format and is appropriate for most uses.

=back

When you use the HTTP API or the AWS CLI, the value is Base64-encoded.
Otherwise, it is not Base64-encoded.


=head2 SigningAlgorithm => Str

The signing algorithm that was used to sign the message.

Valid values are: C<"RSASSA_PSS_SHA_256">, C<"RSASSA_PSS_SHA_384">, C<"RSASSA_PSS_SHA_512">, C<"RSASSA_PKCS1_V1_5_SHA_256">, C<"RSASSA_PKCS1_V1_5_SHA_384">, C<"RSASSA_PKCS1_V1_5_SHA_512">, C<"ECDSA_SHA_256">, C<"ECDSA_SHA_384">, C<"ECDSA_SHA_512">
=head2 _request_id => Str


=cut

1;