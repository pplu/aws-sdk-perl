package Paws::KMS::GrantConstraints;
  use Moose;
  has EncryptionContextEquals => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has EncryptionContextSubset => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
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

A structure that you can use to allow certain operations in the grant
only when the desired encryption context is present. For more
information about encryption context, see Encryption Context
(http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html)
in the I<AWS Key Management Service Developer Guide>.

Grant constraints apply only to operations that accept encryption
context as input. For example, the C< DescribeKey > operation does not
accept encryption context as input. A grant that allows the
C<DescribeKey> operation does so regardless of the grant constraints.
In constrast, the C< Encrypt > operation accepts encryption context as
input. A grant that allows the C<Encrypt> operation does so only when
the encryption context of the C<Encrypt> operation satisfies the grant
constraints.

=head1 ATTRIBUTES


=head2 EncryptionContextEquals => L<Paws::KMS::EncryptionContextType>

  A list of key-value pairs that must be present in the encryption
context of certain subsequent operations that the grant allows. When
certain subsequent operations allowed by the grant include encryption
context that matches this list, the grant allows the operation.
Otherwise, the grant does not allow the operation.


=head2 EncryptionContextSubset => L<Paws::KMS::EncryptionContextType>

  A list of key-value pairs, all of which must be present in the
encryption context of certain subsequent operations that the grant
allows. When certain subsequent operations allowed by the grant include
encryption context that matches this list or is a superset of this
list, the grant allows the operation. Otherwise, the grant does not
allow the operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

