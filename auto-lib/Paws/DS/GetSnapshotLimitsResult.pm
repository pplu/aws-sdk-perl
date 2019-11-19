# Generated from json/callresult_class.tt

package Paws::DS::GetSnapshotLimitsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw/DS_SnapshotLimits/;
  has SnapshotLimits => (is => 'ro', isa => DS_SnapshotLimits);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SnapshotLimits' => {
                                     'class' => 'Paws::DS::SnapshotLimits',
                                     'type' => 'DS_SnapshotLimits'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::GetSnapshotLimitsResult

=head1 ATTRIBUTES


=head2 SnapshotLimits => DS_SnapshotLimits

A SnapshotLimits object that contains the manual snapshot limits for
the specified directory.


=head2 _request_id => Str


=cut

1;