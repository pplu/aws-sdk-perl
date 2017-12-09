
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

If more than C<MaxResults> operations match the specified criteria, the
value of C<NextToken> is the first service in the next group of
services that were created by the current AWS account. To get the next
group, specify the value of C<NextToken> from the previous response in
the next request.


=head2 Services => ArrayRef[L<Paws::ServiceDiscovery::ServiceSummary>]

An array that contains one C<ServiceSummary> object for each service
that matches the specified filter criteria.


=head2 _request_id => Str


=cut

1;