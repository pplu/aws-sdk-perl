
package Paws::EC2::CopySnapshotResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has SnapshotId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SnapshotId' => 'snapshotId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The ID of the new snapshot.


=head2 _request_id => Str


=cut

