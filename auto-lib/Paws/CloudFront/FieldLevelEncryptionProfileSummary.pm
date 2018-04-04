package Paws::CloudFront::FieldLevelEncryptionProfileSummary;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has EncryptionEntities => (is => 'ro', isa => 'Paws::CloudFront::EncryptionEntities', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryptionProfileSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryptionProfileSummary object:

  $service_obj->Method(Att1 => { Comment => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryptionProfileSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

The field-level encryption profile summary.

=head1 ATTRIBUTES


=head2 Comment => Str

  An optional comment for the field-level encryption profile summary.


=head2 B<REQUIRED> EncryptionEntities => L<Paws::CloudFront::EncryptionEntities>

  A complex data type of encryption entities for the field-level
encryption profile that include the public key ID, provider, and field
patterns for specifying which fields to encrypt with this key.


=head2 B<REQUIRED> Id => Str

  ID for the field-level encryption profile summary.


=head2 B<REQUIRED> LastModifiedTime => Str

  The time when the the field-level encryption profile summary was last
updated.


=head2 B<REQUIRED> Name => Str

  Name for the field-level encryption profile summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

