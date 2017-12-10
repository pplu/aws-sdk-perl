
package Paws::CloudDirectory::UpgradeAppliedSchemaResponse;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str');
  has UpgradedSchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpgradeAppliedSchemaResponse

=head1 ATTRIBUTES


=head2 DirectoryArn => Str

The ARN of the directory that is returned as part of the response.


=head2 UpgradedSchemaArn => Str

The ARN of the upgraded schema that is returned as part of the
response.


=head2 _request_id => Str


=cut

