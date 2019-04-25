package Paws::CloudFront::FieldLevelEncryptionProfile;
  use Moose;
  has FieldLevelEncryptionProfileConfig => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfileConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryptionProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryptionProfile object:

  $service_obj->Method(Att1 => { FieldLevelEncryptionProfileConfig => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryptionProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldLevelEncryptionProfileConfig

=head1 DESCRIPTION

A complex data type for field-level encryption profiles.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>

  A complex data type that includes the profile name and the encryption
entities for the field-level encryption profile.


=head2 B<REQUIRED> Id => Str

  The ID for a field-level encryption profile configuration which
includes a set of profiles that specify certain selected data fields to
be encrypted by specific public keys.


=head2 B<REQUIRED> LastModifiedTime => Str

  The last time the field-level encryption profile was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

