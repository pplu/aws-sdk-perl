# Generated from callresult_class.tt

package Paws::RedShift::RevokeSnapshotAccessResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_Snapshot/;
  has Snapshot => (is => 'ro', isa => RedShift_Snapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Snapshot' => {
                               'class' => 'Paws::RedShift::Snapshot',
                               'type' => 'RedShift_Snapshot'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RevokeSnapshotAccessResult

=head1 ATTRIBUTES


=head2 Snapshot => RedShift_Snapshot




=head2 _request_id => Str


=cut

