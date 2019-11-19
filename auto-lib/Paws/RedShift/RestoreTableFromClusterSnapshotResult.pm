# Generated from callresult_class.tt

package Paws::RedShift::RestoreTableFromClusterSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_TableRestoreStatus/;
  has TableRestoreStatus => (is => 'ro', isa => RedShift_TableRestoreStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableRestoreStatus' => {
                                         'type' => 'RedShift_TableRestoreStatus',
                                         'class' => 'Paws::RedShift::TableRestoreStatus'
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

Paws::RedShift::RestoreTableFromClusterSnapshotResult

=head1 ATTRIBUTES


=head2 TableRestoreStatus => RedShift_TableRestoreStatus




=head2 _request_id => Str


=cut

