# Generated from callresult_class.tt

package Paws::Neptune::DBClusterMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_DBCluster/;
  has DBClusters => (is => 'ro', isa => ArrayRef[Neptune_DBCluster]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBClusters' => 'DBCluster'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusters' => {
                                 'type' => 'ArrayRef[Neptune_DBCluster]',
                                 'class' => 'Paws::Neptune::DBCluster'
                               },
               'Marker' => {
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

Paws::Neptune::DBClusterMessage

=head1 ATTRIBUTES


=head2 DBClusters => ArrayRef[Neptune_DBCluster]

Contains a list of DB clusters for the user.


=head2 Marker => Str

A pagination token that can be used in a subsequent DescribeDBClusters
request.


=head2 _request_id => Str


=cut

