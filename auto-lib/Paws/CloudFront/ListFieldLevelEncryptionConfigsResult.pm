
package Paws::CloudFront::ListFieldLevelEncryptionConfigsResult;
  use Moose;
  has FieldLevelEncryptionList => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionList');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryptionList');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListFieldLevelEncryptionConfigsResult

=head1 ATTRIBUTES


=head2 FieldLevelEncryptionList => L<Paws::CloudFront::FieldLevelEncryptionList>

Returns a list of all field-level encryption configurations that have
been created in CloudFront for this account.




=cut

