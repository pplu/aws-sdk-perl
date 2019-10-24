# Generated from json/callresult_class.tt

package Paws::Config::DeliverConfigSnapshotResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has ConfigSnapshotId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigSnapshotId' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ConfigSnapshotId' => 'configSnapshotId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliverConfigSnapshotResponse

=head1 ATTRIBUTES


=head2 ConfigSnapshotId => Str

The ID of the snapshot that is being created.


=head2 _request_id => Str


=cut

1;