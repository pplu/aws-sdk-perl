# Generated from json/callresult_class.tt

package Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has SnapshotId => (is => 'ro', isa => Str);
  has VolumeARN => (is => 'ro', isa => Str);
  has VolumeRecoveryPointTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VolumeRecoveryPointTime' => {
                                              'type' => 'Str'
                                            },
               'VolumeARN' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
DescribeStorediSCSIVolumes operation to return to retrieve the
TargetARN for specified VolumeARN.


=head2 VolumeRecoveryPointTime => Str

The time the volume was created from the recovery point.


=head2 _request_id => Str


=cut

1;