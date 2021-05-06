
package Paws::CloudFront::GetFieldLevelEncryptionProfileResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FieldLevelEncryptionProfile => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfile', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetFieldLevelEncryptionProfileResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption profile. For example:
C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionProfile => L<Paws::CloudFront::FieldLevelEncryptionProfile>

Return the field-level encryption profile information.




=cut

