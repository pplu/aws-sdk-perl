
package Paws::KMS::ReEncrypt;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has DestinationEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has DestinationKeyId => (is => 'ro', isa => 'Str', required => 1);
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReEncrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ReEncryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReEncrypt - Arguments for method ReEncrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReEncrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ReEncrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReEncrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To reencrypt data
    # The following example reencrypts data with the specified CMK.
    my $ReEncryptResponse = $kms->ReEncrypt(
      {
        'CiphertextBlob'   => '<binary data>',
        'DestinationKeyId' => '0987dcba-09fe-87dc-65ba-ab0987654321'
      }
    );

    # Results:
    my $CiphertextBlob = $ReEncryptResponse->CiphertextBlob;
    my $KeyId          = $ReEncryptResponse->KeyId;
    my $SourceKeyId    = $ReEncryptResponse->SourceKeyId;

    # Returns a L<Paws::KMS::ReEncryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ReEncrypt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CiphertextBlob => Str

Ciphertext of the data to reencrypt.



=head2 DestinationEncryptionContext => L<Paws::KMS::EncryptionContextType>

Encryption context to use when the data is reencrypted.



=head2 B<REQUIRED> DestinationKeyId => Str

A unique identifier for the CMK that is used to reencrypt the data.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
name, or alias ARN. When using an alias name, prefix it with "alias/".
To specify a CMK in a different AWS account, you must use the key ARN
or alias ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
To get the alias name and alias ARN, use ListAliases.



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens
(http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 SourceEncryptionContext => L<Paws::KMS::EncryptionContextType>

Encryption context used to encrypt and decrypt the data specified in
the C<CiphertextBlob> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReEncrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

