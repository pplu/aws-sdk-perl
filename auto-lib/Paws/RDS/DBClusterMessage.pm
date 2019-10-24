# Generated from callresult_class.tt

package Paws::RDS::DBClusterMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBCluster/;
  has DBClusters => (is => 'ro', isa => ArrayRef[RDS_DBCluster]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'DBClusters' => {
                                 'class' => 'Paws::RDS::DBCluster',
                                 'type' => 'ArrayRef[RDS_DBCluster]'
                               }
             },
  'NameInRequest' => {
                       'DBClusters' => 'DBCluster'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterMessage

=head1 ATTRIBUTES


=head2 DBClusters => ArrayRef[RDS_DBCluster]

Contains a list of DB clusters for the user.


=head2 Marker => Str

A pagination token that can be used in a subsequent DescribeDBClusters
request.


=head2 _request_id => Str


=cut

