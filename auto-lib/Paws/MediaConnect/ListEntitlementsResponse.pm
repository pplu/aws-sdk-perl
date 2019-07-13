
package Paws::MediaConnect::ListEntitlementsResponse;
  use Moose;
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::ListedEntitlement]', traits => ['NameInRequest'], request_name => 'entitlements');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListEntitlementsResponse

=head1 ATTRIBUTES


=head2 Entitlements => ArrayRef[L<Paws::MediaConnect::ListedEntitlement>]

A list of entitlements that have been granted to you from other AWS
accounts.


=head2 NextToken => Str

The token that identifies which batch of results that you want to see.
For example, you submit a ListEntitlements request with MaxResults set
at 5. The service returns the first batch of results (up to 5) and a
NextToken value. To see the next batch of results, you can submit the
ListEntitlements request a second time and specify the NextToken value.


=head2 _request_id => Str


=cut

