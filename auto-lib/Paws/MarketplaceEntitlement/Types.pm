package Paws::MarketplaceEntitlement::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type MarketplaceEntitlement_Entitlement, { class => 'Paws::MarketplaceEntitlement::Entitlement' };
  class_type MarketplaceEntitlement_EntitlementValue, { class => 'Paws::MarketplaceEntitlement::EntitlementValue' };
  class_type MarketplaceEntitlement_GetEntitlementFilters, { class => 'Paws::MarketplaceEntitlement::GetEntitlementFilters' };
  class_type MarketplaceEntitlement_GetEntitlementsRequest, { class => 'Paws::MarketplaceEntitlement::GetEntitlementsRequest' };
  class_type MarketplaceEntitlement_GetEntitlementsResult, { class => 'Paws::MarketplaceEntitlement::GetEntitlementsResult' };
  class_type MarketplaceEntitlement_InternalServiceErrorException, { class => 'Paws::MarketplaceEntitlement::InternalServiceErrorException' };
  class_type MarketplaceEntitlement_InvalidParameterException, { class => 'Paws::MarketplaceEntitlement::InvalidParameterException' };
  class_type MarketplaceEntitlement_ThrottlingException, { class => 'Paws::MarketplaceEntitlement::ThrottlingException' };

1;
