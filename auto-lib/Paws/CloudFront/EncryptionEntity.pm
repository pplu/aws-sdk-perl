package Paws::CloudFront::EncryptionEntity;
  use Moose;
  has FieldPatterns => (is => 'ro', isa => 'Paws::CloudFront::FieldPatterns', required => 1);
  has ProviderId => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::EncryptionEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::EncryptionEntity object:

  $service_obj->Method(Att1 => { FieldPatterns => $value, ..., PublicKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::EncryptionEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldPatterns

=head1 DESCRIPTION

Complex data type for field-level encryption profiles that includes the
encryption key and field pattern specifications.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldPatterns => L<Paws::CloudFront::FieldPatterns>

  Field patterns in a field-level encryption content type profile specify
the fields that you want to be encrypted. You can provide the full
field name, or any beginning characters followed by a wildcard (*). You
can't overlap field patterns. For example, you can't have both ABC* and
AB*. Note that field patterns are case-sensitive.


=head2 B<REQUIRED> ProviderId => Str

  The provider associated with the public key being used for encryption.
This value must also be provided with the private key for applications
to be able to decrypt data.


=head2 B<REQUIRED> PublicKeyId => Str

  The public key associated with a set of field-level encryption
patterns, to be used when encrypting the fields that match the
patterns.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

