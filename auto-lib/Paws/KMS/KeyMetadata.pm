package Paws::KMS::KeyMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AWSAccountId => (is => 'ro', isa => 'Str');
  has CloudHsmClusterId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has DeletionDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has ExpirationModel => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeyManager => (is => 'ro', isa => 'Str');
  has KeyState => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'Str');
  has ValidTo => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::KeyMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::KeyMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ValidTo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::KeyMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains metadata about a customer master key (CMK).

This data type is used as a response element for the CreateKey and
DescribeKey operations.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the CMK. For examples, see AWS Key
Management Service (AWS KMS)
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms)
in the Example ARNs section of the I<AWS General Reference>.


=head2 AWSAccountId => Str

  The twelve-digit account ID of the AWS account that owns the CMK.


=head2 CloudHsmClusterId => Str

  The cluster ID of the AWS CloudHSM cluster that contains the key
material for the CMK. When you create a CMK in a custom key store
(http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html),
AWS KMS creates the key material for the CMK in the associated AWS
CloudHSM cluster. This value is present only when the CMK is created in
a custom key store.


=head2 CreationDate => Str

  The date and time when the CMK was created.


=head2 CustomKeyStoreId => Str

  A unique identifier for the custom key store
(http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
that contains the CMK. This value is present only when the CMK is
created in a custom key store.


=head2 DeletionDate => Str

  The date and time after which AWS KMS deletes the CMK. This value is
present only when C<KeyState> is C<PendingDeletion>.


=head2 Description => Str

  The description of the CMK.


=head2 Enabled => Bool

  Specifies whether the CMK is enabled. When C<KeyState> is C<Enabled>
this value is true, otherwise it is false.


=head2 ExpirationModel => Str

  Specifies whether the CMK's key material expires. This value is present
only when C<Origin> is C<EXTERNAL>, otherwise this value is omitted.


=head2 B<REQUIRED> KeyId => Str

  The globally unique identifier for the CMK.


=head2 KeyManager => Str

  The CMK's manager. CMKs are either customer-managed or AWS-managed. For
more information about the difference, see Customer Master Keys
(http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys)
in the I<AWS Key Management Service Developer Guide>.


=head2 KeyState => Str

  The state of the CMK.

For more information about how key state affects the use of a CMK, see
How Key State Affects the Use of a Customer Master Key
(http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 KeyUsage => Str

  The cryptographic operations for which you can use the CMK. Currently
the only allowed value is C<ENCRYPT_DECRYPT>, which means you can use
the CMK for the Encrypt and Decrypt operations.


=head2 Origin => Str

  The source of the CMK's key material. When this value is C<AWS_KMS>,
AWS KMS created the key material. When this value is C<EXTERNAL>, the
key material was imported from your existing key management
infrastructure or the CMK lacks key material. When this value is
C<AWS_CLOUDHSM>, the key material was created in the AWS CloudHSM
cluster associated with a custom key store.


=head2 ValidTo => Str

  The time at which the imported key material expires. When the key
material expires, AWS KMS deletes the key material and the CMK becomes
unusable. This value is present only for CMKs whose C<Origin> is
C<EXTERNAL> and whose C<ExpirationModel> is C<KEY_MATERIAL_EXPIRES>,
otherwise this value is omitted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

