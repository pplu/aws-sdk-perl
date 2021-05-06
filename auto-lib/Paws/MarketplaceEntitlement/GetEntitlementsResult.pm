
package Paws::MarketplaceEntitlement::GetEntitlementsResult;
  use Moose;
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceEntitlement::Entitlement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement::GetEntitlementsResult

=head1 ATTRIBUTES


=head2 Entitlements => ArrayRef[L<Paws::MarketplaceEntitlement::Entitlement>]

The set of entitlements found through the GetEntitlements operation. If
the result contains an empty set of entitlements, NextToken might still
be present and should be used.


=head2 NextToken => Str

For paginated results, use NextToken in subsequent calls to
GetEntitlements. If the result contains an empty set of entitlements,
NextToken might still be present and should be used.


=head2 _request_id => Str


=cut

1;