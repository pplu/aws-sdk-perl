
package Paws::KMS::GetParametersForImport;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has WrappingAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has WrappingKeySpec => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParametersForImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GetParametersForImportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetParametersForImport - Arguments for method GetParametersForImport on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersForImport on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GetParametersForImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersForImport.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
   # To retrieve the public key and import token for a customer master key (CMK)
   # The following example retrieves the public key and import token for the
   # specified CMK.
    my $GetParametersForImportResponse = $kms->GetParametersForImport(
      {
        'KeyId'             => '1234abcd-12ab-34cd-56ef-1234567890ab',
        'WrappingAlgorithm' => 'RSAES_OAEP_SHA_1',
        'WrappingKeySpec'   => 'RSA_2048'
      }
    );

    # Results:
    my $ImportToken       = $GetParametersForImportResponse->ImportToken;
    my $KeyId             = $GetParametersForImportResponse->KeyId;
    my $ParametersValidTo = $GetParametersForImportResponse->ParametersValidTo;
    my $PublicKey         = $GetParametersForImportResponse->PublicKey;

    # Returns a L<Paws::KMS::GetParametersForImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GetParametersForImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

The identifier of the CMK into which you will import key material. The
CMK's C<Origin> must be C<EXTERNAL>.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 B<REQUIRED> WrappingAlgorithm => Str

The algorithm you will use to encrypt the key material before importing
it with ImportKeyMaterial. For more information, see Encrypt the Key
Material
(http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html)
in the I<AWS Key Management Service Developer Guide>.

Valid values are: C<"RSAES_PKCS1_V1_5">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">

=head2 B<REQUIRED> WrappingKeySpec => Str

The type of wrapping key (public key) to return in the response. Only
2048-bit RSA public keys are supported.

Valid values are: C<"RSA_2048">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParametersForImport in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

