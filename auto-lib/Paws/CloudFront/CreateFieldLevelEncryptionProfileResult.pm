
package Paws::CloudFront::CreateFieldLevelEncryptionProfileResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FieldLevelEncryptionProfile => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfile', traits => ['ParamInBody']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


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

The fully qualified URI of the new profile resource just created.




=cut

