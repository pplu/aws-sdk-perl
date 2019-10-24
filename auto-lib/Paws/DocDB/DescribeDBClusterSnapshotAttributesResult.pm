# Generated from callresult_class.tt

package Paws::DocDB::DescribeDBClusterSnapshotAttributesResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_DBClusterSnapshotAttributesResult/;
  has DBClusterSnapshotAttributesResult => (is => 'ro', isa => DocDB_DBClusterSnapshotAttributesResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotAttributesResult' => {
                                                        'class' => 'Paws::DocDB::DBClusterSnapshotAttributesResult',
                                                        'type' => 'DocDB_DBClusterSnapshotAttributesResult'
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

Paws::DocDB::DescribeDBClusterSnapshotAttributesResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributesResult => DocDB_DBClusterSnapshotAttributesResult




=head2 _request_id => Str


=cut

