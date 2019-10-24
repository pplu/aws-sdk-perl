# Generated from callresult_class.tt

package Paws::RDS::DBClusterEndpointMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBClusterEndpoint/;
  has DBClusterEndpoints => (is => 'ro', isa => ArrayRef[RDS_DBClusterEndpoint]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterEndpoints' => {
                                         'class' => 'Paws::RDS::DBClusterEndpoint',
                                         'type' => 'ArrayRef[RDS_DBClusterEndpoint]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBClusterEndpoints' => 'DBClusterEndpointList'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterEndpointMessage

=head1 ATTRIBUTES


=head2 DBClusterEndpoints => ArrayRef[RDS_DBClusterEndpoint]

Contains the details of the endpoints associated with the cluster and
matching any filter conditions.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBClusterEndpoints> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

