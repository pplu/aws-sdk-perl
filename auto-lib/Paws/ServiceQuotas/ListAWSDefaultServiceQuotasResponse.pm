
package Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Quotas => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::ServiceQuota]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

(Optional) Use this parameter in a request if you receive a
C<NextToken> response in a previous request that indicates that there's
more output available. In a subsequent call, set it to the value of the
previous call's C<NextToken> response to indicate where the output
should continue from.


=head2 Quotas => ArrayRef[L<Paws::ServiceQuotas::ServiceQuota>]

A list of the quotas in the account with the AWS default values.


=head2 _request_id => Str


=cut

1;