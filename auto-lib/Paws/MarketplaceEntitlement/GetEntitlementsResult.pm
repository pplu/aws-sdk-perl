# Generated from json/callresult_class.tt

package Paws::MarketplaceEntitlement::GetEntitlementsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MarketplaceEntitlement::Types qw/MarketplaceEntitlement_Entitlement/;
  has Entitlements => (is => 'ro', isa => ArrayRef[MarketplaceEntitlement_Entitlement]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Entitlements' => {
                                   'class' => 'Paws::MarketplaceEntitlement::Entitlement',
                                   'type' => 'ArrayRef[MarketplaceEntitlement_Entitlement]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement::GetEntitlementsResult

=head1 ATTRIBUTES


=head2 Entitlements => ArrayRef[MarketplaceEntitlement_Entitlement]

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