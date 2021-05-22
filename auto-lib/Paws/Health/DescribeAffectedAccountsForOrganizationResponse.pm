
package Paws::Health::DescribeAffectedAccountsForOrganizationResponse;
  use Moose;
  has AffectedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'affectedAccounts' );
  has EventScopeCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventScopeCode' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeAffectedAccountsForOrganizationResponse

=head1 ATTRIBUTES


=head2 AffectedAccounts => ArrayRef[Str|Undef]

A JSON set of elements of the affected accounts.


=head2 EventScopeCode => Str

This parameter specifies if the AWS Health event is a public AWS
service event or an account-specific event.

=over

=item *

If the C<eventScopeCode> value is C<PUBLIC>, then the
C<affectedAccounts> value is always empty.

=item *

If the C<eventScopeCode> value is C<ACCOUNT_SPECIFIC>, then the
C<affectedAccounts> value lists the affected AWS accounts in your
organization. For example, if an event affects a service such as Amazon
Elastic Compute Cloud and you have AWS accounts that use that service,
those account IDs appear in the response.

=item *

If the C<eventScopeCode> value is C<NONE>, then the C<eventArn> that
you specified in the request is invalid or doesn't exist.

=back


Valid values are: C<"PUBLIC">, C<"ACCOUNT_SPECIFIC">, C<"NONE">
=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;