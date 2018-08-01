
package Paws::CloudFront::GetFieldLevelEncryptionResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FieldLevelEncryption => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryption', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetFieldLevelEncryptionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption configuration. For
example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryption => L<Paws::CloudFront::FieldLevelEncryption>

Return the field-level encryption configuration information.




=cut

