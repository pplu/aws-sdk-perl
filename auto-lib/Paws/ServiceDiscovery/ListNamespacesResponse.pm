
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

If more than C<MaxResults> namespaces match the specified criteria, you
can submit another C<ListNamespaces> request to get the next group of
results. Specify the value of C<NextToken> from the previous response
in the next request.


=head2 _request_id => Str


=cut

1;