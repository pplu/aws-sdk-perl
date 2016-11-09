
package Paws::StorageGateway::ListVolumeRecoveryPointsOutput;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::VolumeRecoveryPointInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListVolumeRecoveryPointsOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 VolumeRecoveryPointInfos => ArrayRef[L<Paws::StorageGateway::VolumeRecoveryPointInfo>]




=head2 _request_id => Str


=cut

1;