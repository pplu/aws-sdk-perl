package Paws::KMS::GrantConstraints;
  use Moose;
  has EncryptionContextEquals => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has EncryptionContextSubset => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GrantConstraints

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 EncryptionContextEquals => Paws::KMS::EncryptionContextType

  

The constraint contains additional key/value pairs that serve to
further limit the grant.










=head2 EncryptionContextSubset => Paws::KMS::EncryptionContextType

  

The constraint equals the full encryption context.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

