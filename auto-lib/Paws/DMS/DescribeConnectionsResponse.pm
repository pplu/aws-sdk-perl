
package Paws::DMS::DescribeConnectionsResponse;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Connection]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeConnectionsResponse

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[L<Paws::DMS::Connection>]

A description of the connections.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;