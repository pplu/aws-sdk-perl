
package Paws::CloudFront::ListFieldLevelEncryptionProfilesResult;
  use Moose;
  has FieldLevelEncryptionProfileList => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfileList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListFieldLevelEncryptionProfilesResult

=head1 ATTRIBUTES


=head2 FieldLevelEncryptionProfileList => L<Paws::CloudFront::FieldLevelEncryptionProfileList>

Returns a list of the field-level encryption profiles that have been
created in CloudFront for this account.




=cut

