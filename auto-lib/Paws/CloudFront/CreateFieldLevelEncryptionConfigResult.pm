
package Paws::CloudFront::CreateFieldLevelEncryptionConfigResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has FieldLevelEncryption => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryption');
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFieldLevelEncryptionConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption configuration. For
example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryption => L<Paws::CloudFront::FieldLevelEncryption>

Returned when you create a new field-level encryption configuration.



=head2 Location => Str

The fully qualified URI of the new configuration resource just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-config/EDFDVBD632BHDS5>.




=cut

