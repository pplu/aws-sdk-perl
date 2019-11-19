# Generated from json/callresult_class.tt

package Paws::StorageGateway::CreateSnapshotOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has SnapshotId => (is => 'ro', isa => Str);
  has VolumeARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeARN' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSnapshotOutput

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The snapshot ID that is used to refer to the snapshot in future
operations such as describing snapshots (Amazon Elastic Compute Cloud
API C<DescribeSnapshots>) or creating a volume from a snapshot
(CreateStorediSCSIVolume).


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the volume of which the snapshot was
taken.


=head2 _request_id => Str


=cut

1;