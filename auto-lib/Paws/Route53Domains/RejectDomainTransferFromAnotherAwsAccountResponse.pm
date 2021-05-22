
package Paws::Route53Domains::RejectDomainTransferFromAnotherAwsAccountResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RejectDomainTransferFromAnotherAwsAccountResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

The identifier that C<TransferDomainToAnotherAwsAccount> returned to
track the progress of the request. Because the transfer request was
rejected, the value is no longer valid, and you can't use
C<GetOperationDetail> to query the operation status.


=head2 _request_id => Str


=cut

1;