
package Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccountResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccountResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

Identifier for tracking the progress of the request. To query the
operation status, use GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html).


=head2 _request_id => Str


=cut

1;