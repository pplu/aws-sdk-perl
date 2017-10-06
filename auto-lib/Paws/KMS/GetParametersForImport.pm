
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

Paws::KMS::GetParametersForImport - Arguments for method GetParametersForImport on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersForImport on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method GetParametersForImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersForImport.

As an example:

  $service_obj->GetParametersForImport(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

The identifier of the CMK into which you will import key material. The
CMK's C<Origin> must be C<EXTERNAL>.

A valid identifier is the unique key ID or the Amazon Resource Name
(ARN) of the CMK. Examples:

=over

=item *

Unique key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back




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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

