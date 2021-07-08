
package Paws::SSM::UpdateOpsMetadataResult;
  use Moose;
  has OpsMetadataArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateOpsMetadataResult

=head1 ATTRIBUTES


=head2 OpsMetadataArn => Str

The Amazon Resource Name (ARN) of the OpsMetadata Object that was
updated.


=head2 _request_id => Str


=cut

1;