
package Paws::StorageGateway::DescribeStorediSCSIVolumesOutput;
  use Moose;
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::StorediSCSIVolume]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeStorediSCSIVolumesOutput

=head1 ATTRIBUTES


=head2 StorediSCSIVolumes => ArrayRef[L<Paws::StorageGateway::StorediSCSIVolume>]




=head2 _request_id => Str


=cut

1;