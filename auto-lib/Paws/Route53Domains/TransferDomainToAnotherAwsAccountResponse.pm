
package Paws::Route53Domains::TransferDomainToAnotherAwsAccountResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::TransferDomainToAnotherAwsAccountResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

Identifier for tracking the progress of the request. To query the
operation status, use GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html).


=head2 Password => Str

To finish transferring a domain to another AWS account, the account
that the domain is being transferred to must submit an
AcceptDomainTransferFromAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html)
request. The request must include the value of the C<Password> element
that was returned in the C<TransferDomainToAnotherAwsAccount> response.


=head2 _request_id => Str


=cut

1;