# Generated from callresult_class.tt

package Paws::RedShift::CreateSnapshotCopyGrantResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_SnapshotCopyGrant/;
  has SnapshotCopyGrant => (is => 'ro', isa => RedShift_SnapshotCopyGrant);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SnapshotCopyGrant' => {
                                        'class' => 'Paws::RedShift::SnapshotCopyGrant',
                                        'type' => 'RedShift_SnapshotCopyGrant'
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

Paws::RedShift::CreateSnapshotCopyGrantResult

=head1 ATTRIBUTES


=head2 SnapshotCopyGrant => RedShift_SnapshotCopyGrant




=head2 _request_id => Str


=cut

