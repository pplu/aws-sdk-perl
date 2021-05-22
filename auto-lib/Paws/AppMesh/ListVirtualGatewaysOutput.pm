
package Paws::AppMesh::ListVirtualGatewaysOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VirtualGateways => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::VirtualGatewayRef]', traits => ['NameInRequest'], request_name => 'virtualGateways', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualGatewaysOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualGateways>
request. When the results of a C<ListVirtualGateways> request exceed
C<limit>, you can use this value to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualGateways => ArrayRef[L<Paws::AppMesh::VirtualGatewayRef>]

The list of existing virtual gateways for the specified service mesh.


=head2 _request_id => Str


=cut

