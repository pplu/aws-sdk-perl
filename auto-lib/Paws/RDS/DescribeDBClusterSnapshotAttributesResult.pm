# Generated from callresult_class.tt

package Paws::RDS::DescribeDBClusterSnapshotAttributesResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBClusterSnapshotAttributesResult/;
  has DBClusterSnapshotAttributesResult => (is => 'ro', isa => RDS_DBClusterSnapshotAttributesResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotAttributesResult' => {
                                                        'class' => 'Paws::RDS::DBClusterSnapshotAttributesResult',
                                                        'type' => 'RDS_DBClusterSnapshotAttributesResult'
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

Paws::RDS::DescribeDBClusterSnapshotAttributesResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributesResult => RDS_DBClusterSnapshotAttributesResult




=head2 _request_id => Str


=cut

