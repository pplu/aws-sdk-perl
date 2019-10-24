# Generated from callresult_class.tt

package Paws::DocDB::DeleteDBClusterSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_DBClusterSnapshot/;
  has DBClusterSnapshot => (is => 'ro', isa => DocDB_DBClusterSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterSnapshot' => {
                                        'class' => 'Paws::DocDB::DBClusterSnapshot',
                                        'type' => 'DocDB_DBClusterSnapshot'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DeleteDBClusterSnapshotResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshot => DocDB_DBClusterSnapshot




=head2 _request_id => Str


=cut

