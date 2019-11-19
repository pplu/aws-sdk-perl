# Generated from callresult_class.tt

package Paws::RedShift::DeleteClusterSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_Snapshot/;
  has Snapshot => (is => 'ro', isa => RedShift_Snapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Snapshot' => {
                               'type' => 'RedShift_Snapshot',
                               'class' => 'Paws::RedShift::Snapshot'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteClusterSnapshotResult

=head1 ATTRIBUTES


=head2 Snapshot => RedShift_Snapshot




=head2 _request_id => Str


=cut

