
package Paws::StorageGateway::ListVolumesOutput;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VolumeInfos => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::VolumeInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListVolumesOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 Marker => Str




=head2 VolumeInfos => ArrayRef[L<Paws::StorageGateway::VolumeInfo>]




=head2 _request_id => Str


=cut

1;