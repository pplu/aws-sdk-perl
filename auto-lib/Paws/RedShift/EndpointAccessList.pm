
package Paws::RedShift::EndpointAccessList;
  use Moose;
  has EndpointAccessList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EndpointAccess]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EndpointAccessList

=head1 ATTRIBUTES


=head2 EndpointAccessList => ArrayRef[L<Paws::RedShift::EndpointAccess>]

The list of endpoints with access to the cluster.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEndpointAccess> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by the C<MaxRecords> parameter.


=head2 _request_id => Str


=cut

