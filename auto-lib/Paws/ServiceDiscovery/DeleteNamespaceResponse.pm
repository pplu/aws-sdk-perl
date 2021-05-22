
package Paws::ServiceDiscovery::DeleteNamespaceResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DeleteNamespaceResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

A value that you can use to determine whether the request completed
successfully. To get the status of the operation, see GetOperation
(https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html).


=head2 _request_id => Str


=cut

1;