
package Paws::KMS::ImportKeyMaterial;
  use Moose;
  has EncryptedKeyMaterial => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationModel => (is => 'ro', isa => 'Str');
  has ImportToken => (is => 'ro', isa => 'Str', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has ValidTo => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyMaterial');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ImportKeyMaterialResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ImportKeyMaterial - Arguments for method ImportKeyMaterial on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportKeyMaterial on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ImportKeyMaterial.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportKeyMaterial.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To import key material into a customer master key (CMK)
    # The following example imports key material into the specified CMK.
    my $ImportKeyMaterialResponse = $kms->ImportKeyMaterial(
      {
        'EncryptedKeyMaterial' => '<binary data>',
        'ExpirationModel'      => 'KEY_MATERIAL_DOES_NOT_EXPIRE',
        'ImportToken'          => '<binary data>',
        'KeyId'                => '1234abcd-12ab-34cd-56ef-1234567890ab'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ImportKeyMaterial>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptedKeyMaterial => Str

The encrypted key material to import. It must be encrypted with the
public key that you received in the response to a previous
GetParametersForImport request, using the wrapping algorithm that you
specified in that request.



=head2 ExpirationModel => Str

Specifies whether the key material expires. The default is
C<KEY_MATERIAL_EXPIRES>, in which case you must include the C<ValidTo>
parameter. When this parameter is set to
C<KEY_MATERIAL_DOES_NOT_EXPIRE>, you must omit the C<ValidTo>
parameter.

Valid values are: C<"KEY_MATERIAL_EXPIRES">, C<"KEY_MATERIAL_DOES_NOT_EXPIRE">

=head2 B<REQUIRED> ImportToken => Str

The import token that you received in the response to a previous
GetParametersForImport request. It must be from the same response that
contained the public key that you used to encrypt the key material.



=head2 B<REQUIRED> KeyId => Str

The identifier of the CMK to import the key material into. The CMK's
C<Origin> must be C<EXTERNAL>.

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



=head2 ValidTo => Str

The time at which the imported key material expires. When the key
material expires, AWS KMS deletes the key material and the CMK becomes
unusable. You must omit this parameter when the C<ExpirationModel>
parameter is set to C<KEY_MATERIAL_DOES_NOT_EXPIRE>. Otherwise it is
required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportKeyMaterial in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

