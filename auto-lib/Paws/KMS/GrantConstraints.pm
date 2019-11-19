# Generated from default/object.tt
package Paws::KMS::GrantConstraints;
  use Moo;
  use Types::Standard qw//;
  use Paws::KMS::Types qw/KMS_EncryptionContextType/;
  has EncryptionContextEquals => (is => 'ro', isa => KMS_EncryptionContextType);
  has EncryptionContextSubset => (is => 'ro', isa => KMS_EncryptionContextType);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EncryptionContextSubset' => {
                                              'type' => 'KMS_EncryptionContextType',
                                              'class' => 'Paws::KMS::EncryptionContextType'
                                            },
               'EncryptionContextEquals' => {
                                              'class' => 'Paws::KMS::EncryptionContextType',
                                              'type' => 'KMS_EncryptionContextType'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GrantConstraints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::GrantConstraints object:

  $service_obj->Method(Att1 => { EncryptionContextEquals => $value, ..., EncryptionContextSubset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::GrantConstraints object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionContextEquals

=head1 DESCRIPTION

Use this structure to allow cryptographic operations in the grant only
when the operation request includes the specified encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).

AWS KMS applies the grant constraints only when the grant allows a
cryptographic operation that accepts an encryption context as input,
such as the following.

=over

=item *

Encrypt

=item *

Decrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyWithoutPlaintext

=item *

ReEncrypt

=back

AWS KMS does not apply the grant constraints to other operations, such
as DescribeKey or ScheduleKeyDeletion.

In a cryptographic operation, the encryption context in the decryption
operation must be an exact, case-sensitive match for the keys and
values in the encryption context of the encryption operation. Only the
order of the pairs can vary.

However, in a grant constraint, the key in each key-value pair is not
case sensitive, but the value is case sensitive.

To avoid confusion, do not use multiple encryption context pairs that
differ only by case. To require a fully case-sensitive encryption
context, use the C<kms:EncryptionContext:> and
C<kms:EncryptionContextKeys> conditions in an IAM or key policy. For
details, see kms:EncryptionContext:
(https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-context)
in the I< I<AWS Key Management Service Developer Guide> >.

=head1 ATTRIBUTES


=head2 EncryptionContextEquals => KMS_EncryptionContextType

  A list of key-value pairs that must match the encryption context in the
cryptographic operation request. The grant allows the operation only
when the encryption context in the request is the same as the
encryption context specified in this constraint.


=head2 EncryptionContextSubset => KMS_EncryptionContextType

  A list of key-value pairs that must be included in the encryption
context of the cryptographic operation request. The grant allows the
cryptographic operation only when the encryption context in the request
includes the key-value pairs specified in this constraint, although it
can include additional key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

