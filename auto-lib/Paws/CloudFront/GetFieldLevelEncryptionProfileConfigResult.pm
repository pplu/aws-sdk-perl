
package Paws::CloudFront::GetFieldLevelEncryptionProfileConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FieldLevelEncryptionProfileConfig => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfileConfig', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetFieldLevelEncryptionProfileConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field-level encryption profile configuration
result. For example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionProfileConfig => L<Paws::CloudFront::FieldLevelEncryptionProfileConfig>

Return the field-level encryption profile configuration information.




=cut

