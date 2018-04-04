package Paws::CloudFront::FieldLevelEncryption;
  use Moose;
  has FieldLevelEncryptionConfig => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryption object:

  $service_obj->Method(Att1 => { FieldLevelEncryptionConfig => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldLevelEncryptionConfig

=head1 DESCRIPTION

A complex data type that includes the profile configurations and other
options specified for field-level encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>

  A complex data type that includes the profile configurations specified
for field-level encryption.


=head2 B<REQUIRED> Id => Str

  The configuration ID for a field-level encryption configuration which
includes a set of profiles that specify certain selected data fields to
be encrypted by specific public keys.


=head2 B<REQUIRED> LastModifiedTime => Str

  The last time the field-level encryption configuration was changed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

