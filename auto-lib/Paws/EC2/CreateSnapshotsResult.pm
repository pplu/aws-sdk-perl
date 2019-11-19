
package Paws::EC2::CreateSnapshotsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SnapshotInfo/;
  has Snapshots => (is => 'ro', isa => ArrayRef[EC2_SnapshotInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Snapshots' => {
                                'type' => 'ArrayRef[EC2_SnapshotInfo]',
                                'class' => 'Paws::EC2::SnapshotInfo'
                              }
             },
  'NameInRequest' => {
                       'Snapshots' => 'snapshotSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSnapshotsResult

=head1 ATTRIBUTES


=head2 Snapshots => ArrayRef[EC2_SnapshotInfo]

List of snapshots.


=head2 _request_id => Str


=cut

