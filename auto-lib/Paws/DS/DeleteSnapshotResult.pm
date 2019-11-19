# Generated from json/callresult_class.tt

package Paws::DS::DeleteSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has SnapshotId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::DS::DeleteSnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The identifier of the directory snapshot that was deleted.


=head2 _request_id => Str


=cut

1;