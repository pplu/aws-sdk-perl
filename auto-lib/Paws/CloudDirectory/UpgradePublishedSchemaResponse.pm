
package Paws::CloudDirectory::UpgradePublishedSchemaResponse;
  use Moose;
  has UpgradedSchemaArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpgradePublishedSchemaResponse

=head1 ATTRIBUTES


=head2 UpgradedSchemaArn => Str

The ARN of the upgraded schema that is returned as part of the
response.


=head2 _request_id => Str


=cut

