
package Paws::ServiceDiscovery::ListNamespacesResponse;
  use Moose;
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::NamespaceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListNamespacesResponse

=head1 ATTRIBUTES


=head2 Namespaces => ArrayRef[L<Paws::ServiceDiscovery::NamespaceSummary>]

An array that contains one C<NamespaceSummary> object for each
namespace that matches the specified filter criteria.


=head2 NextToken => Str

If the response contains C<NextToken>, submit another C<ListNamespaces>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

AWS Cloud Map gets C<MaxResults> namespaces and then filters them based
on the specified criteria. It's possible that no namespaces in the
first C<MaxResults> namespaces matched the specified criteria but that
subsequent groups of C<MaxResults> namespaces do contain namespaces
that match the criteria.


=head2 _request_id => Str


=cut

1;