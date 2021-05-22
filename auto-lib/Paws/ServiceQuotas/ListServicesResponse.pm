
package Paws::ServiceQuotas::ListServicesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::ServiceInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListServicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 Services => ArrayRef[L<Paws::ServiceQuotas::ServiceInfo>]

Information about the services.


=head2 _request_id => Str


=cut

1;