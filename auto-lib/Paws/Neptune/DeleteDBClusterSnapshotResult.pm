# Generated from callresult_class.tt

package Paws::Neptune::DeleteDBClusterSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBClusterSnapshot/;
  has DBClusterSnapshot => (is => 'ro', isa => Neptune_DBClusterSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterSnapshot' => {
                                        'class' => 'Paws::Neptune::DBClusterSnapshot',
                                        'type' => 'Neptune_DBClusterSnapshot'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DeleteDBClusterSnapshotResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshot => Neptune_DBClusterSnapshot




=head2 _request_id => Str


=cut

