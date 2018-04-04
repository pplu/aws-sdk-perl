
package Paws::CloudFront::CreateFieldLevelEncryptionProfileResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has FieldLevelEncryptionProfile => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfile');
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFieldLevelEncryptionProfileResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption profile. For example:
C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionProfile => L<Paws::CloudFront::FieldLevelEncryptionProfile>

Returned when you create a new field-level encryption profile.



=head2 Location => Str

The fully qualified URI of the new profile resource just created. For
example:
C<https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-profile/EDFDVBD632BHDS5>.




=cut

