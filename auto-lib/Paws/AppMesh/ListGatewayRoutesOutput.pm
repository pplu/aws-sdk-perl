
package Paws::AppMesh::ListGatewayRoutesOutput;
  use Moose;
  has GatewayRoutes => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::GatewayRouteRef]', traits => ['NameInRequest'], request_name => 'gatewayRoutes', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListGatewayRoutesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayRoutes => ArrayRef[L<Paws::AppMesh::GatewayRouteRef>]

The list of existing gateway routes for the specified service mesh and
virtual gateway.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListGatewayRoutes>
request. When the results of a C<ListGatewayRoutes> request exceed
C<limit>, you can use this value to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

