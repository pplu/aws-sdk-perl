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

A structure for specifying the conditions under which the operations
permitted by the grant are allowed.

You can use this structure to allow the operations permitted by the
grant only when a specified encryption context is present. For more
information about encryption context, see Encryption Context in the
I<AWS Key Management Service Developer Guide>.

=head1 ATTRIBUTES


=head2 EncryptionContextEquals => L<Paws::KMS::EncryptionContextType>

  Contains a list of key-value pairs that must be present in the
encryption context of a subsequent operation permitted by the grant.
When a subsequent operation permitted by the grant includes an
encryption context that matches this list, the grant allows the
operation. Otherwise, the operation is not allowed.


=head2 EncryptionContextSubset => L<Paws::KMS::EncryptionContextType>

  Contains a list of key-value pairs, a subset of which must be present
in the encryption context of a subsequent operation permitted by the
grant. When a subsequent operation permitted by the grant includes an
encryption context that matches this list or is a subset of this list,
the grant allows the operation. Otherwise, the operation is not
allowed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

