
package Paws::Route53Domains::RenewDomainResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RenewDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationId => Str

The identifier for tracking the progress of the request. To use this ID
to query the operation status, use GetOperationDetail.


=head2 _request_id => Str


=cut

1;