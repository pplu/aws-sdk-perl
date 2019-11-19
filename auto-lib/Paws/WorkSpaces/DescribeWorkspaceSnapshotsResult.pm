# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Snapshot/;
  has RebuildSnapshots => (is => 'ro', isa => ArrayRef[WorkSpaces_Snapshot]);
  has RestoreSnapshots => (is => 'ro', isa => ArrayRef[WorkSpaces_Snapshot]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RestoreSnapshots' => {
                                       'class' => 'Paws::WorkSpaces::Snapshot',
                                       'type' => 'ArrayRef[WorkSpaces_Snapshot]'
                                     },
               'RebuildSnapshots' => {
                                       'class' => 'Paws::WorkSpaces::Snapshot',
                                       'type' => 'ArrayRef[WorkSpaces_Snapshot]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult

=head1 ATTRIBUTES


=head2 RebuildSnapshots => ArrayRef[WorkSpaces_Snapshot]

Information about the snapshots that can be used to rebuild a
WorkSpace. These snapshots include the user volume.


=head2 RestoreSnapshots => ArrayRef[WorkSpaces_Snapshot]

Information about the snapshots that can be used to restore a
WorkSpace. These snapshots include both the root volume and the user
volume.


=head2 _request_id => Str


=cut

1;