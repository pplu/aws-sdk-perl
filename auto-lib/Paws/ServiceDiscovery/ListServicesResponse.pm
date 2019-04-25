
package Paws::ServiceDiscovery::ListServicesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::ServiceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListServicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response contains C<NextToken>, submit another C<ListServices>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

AWS Cloud Map gets C<MaxResults> services and then filters them based
on the specified criteria. It's possible that no services in the first
C<MaxResults> services matched the specified criteria but that
subsequent groups of C<MaxResults> services do contain services that
match the criteria.


=head2 Services => ArrayRef[L<Paws::ServiceDiscovery::ServiceSummary>]

An array that contains one C<ServiceSummary> object for each service
that matches the specified filter criteria.


=head2 _request_id => Str


=cut

1;