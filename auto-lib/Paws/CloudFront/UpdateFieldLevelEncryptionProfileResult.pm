
package Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FieldLevelEncryptionProfile => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionProfile', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult

=head1 ATTRIBUTES


=head2 ETag => Str

The result of the field-level encryption profile request.



=head2 FieldLevelEncryptionProfile => L<Paws::CloudFront::FieldLevelEncryptionProfile>

Return the results of updating the profile.




=cut

