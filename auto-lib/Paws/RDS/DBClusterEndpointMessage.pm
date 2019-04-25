
package Paws::RDS::DBClusterEndpointMessage;
  use Moose;
  has DBClusterEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterEndpoint]', request_name => 'DBClusterEndpointList', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterEndpointMessage

=head1 ATTRIBUTES


=head2 DBClusterEndpoints => ArrayRef[L<Paws::RDS::DBClusterEndpoint>]

Contains the details of the endpoints associated with the cluster and
matching any filter conditions.


=head2 Marker => Str

An optional pagination token provided by a previous
DescribeDBClusterEndpoints request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

