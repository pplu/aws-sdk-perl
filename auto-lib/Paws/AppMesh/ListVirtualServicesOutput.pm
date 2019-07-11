
package Paws::AppMesh::ListVirtualServicesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VirtualServices => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::VirtualServiceRef]', traits => ['NameInRequest'], request_name => 'virtualServices', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualServicesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualServices>
request. When the results of a C<ListVirtualServices> request exceed
C<limit>, you can use this value to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualServices => ArrayRef[L<Paws::AppMesh::VirtualServiceRef>]

The list of existing virtual services for the specified service mesh.


=head2 _request_id => Str


=cut

