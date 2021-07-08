
package Paws::StorageGateway::DescribeStorediSCSIVolumesOutput;
  use Moose;
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::StorediSCSIVolume]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeStorediSCSIVolumesOutput

=head1 ATTRIBUTES


=head2 StorediSCSIVolumes => ArrayRef[L<Paws::StorageGateway::StorediSCSIVolume>]

Describes a single unit of output from DescribeStorediSCSIVolumes. The
following fields are returned:

=over

=item *

C<ChapEnabled>: Indicates whether mutual CHAP is enabled for the iSCSI
target.

=item *

C<LunNumber>: The logical disk number.

=item *

C<NetworkInterfaceId>: The network interface ID of the stored volume
that initiator use to map the stored volume as an iSCSI target.

=item *

C<NetworkInterfacePort>: The port used to communicate with iSCSI
targets.

=item *

C<PreservedExistingData>: Indicates when the stored volume was created,
existing data on the underlying local disk was preserved.

=item *

C<SourceSnapshotId>: If the stored volume was created from a snapshot,
this field contains the snapshot ID used, e.g. C<snap-1122aabb>.
Otherwise, this field is not included.

=item *

C<StorediSCSIVolumes>: An array of StorediSCSIVolume objects where each
object contains metadata about one stored volume.

=item *

C<TargetARN>: The Amazon Resource Name (ARN) of the volume target.

=item *

C<VolumeARN>: The Amazon Resource Name (ARN) of the stored volume.

=item *

C<VolumeDiskId>: The disk ID of the local disk that was specified in
the CreateStorediSCSIVolume operation.

=item *

C<VolumeId>: The unique identifier of the storage volume, e.g.
C<vol-1122AABB>.

=item *

C<VolumeiSCSIAttributes>: An VolumeiSCSIAttributes object that
represents a collection of iSCSI attributes for one stored volume.

=item *

C<VolumeProgress>: Represents the percentage complete if the volume is
restoring or bootstrapping that represents the percent of data
transferred. This field does not appear in the response if the stored
volume is not restoring or bootstrapping.

=item *

C<VolumeSizeInBytes>: The size of the volume in bytes.

=item *

C<VolumeStatus>: One of the C<VolumeStatus> values that indicates the
state of the volume.

=item *

C<VolumeType>: One of the enumeration values describing the type of the
volume. Currently, only C<STORED> volumes are supported.

=back



=head2 _request_id => Str


=cut

1;