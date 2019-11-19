package Paws::Pricing::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Pricing_AttributeValue, { class => 'Paws::Pricing::AttributeValue' };
  class_type Pricing_DescribeServicesRequest, { class => 'Paws::Pricing::DescribeServicesRequest' };
  class_type Pricing_DescribeServicesResponse, { class => 'Paws::Pricing::DescribeServicesResponse' };
  class_type Pricing_ExpiredNextTokenException, { class => 'Paws::Pricing::ExpiredNextTokenException' };
  class_type Pricing_Filter, { class => 'Paws::Pricing::Filter' };
  class_type Pricing_GetAttributeValuesRequest, { class => 'Paws::Pricing::GetAttributeValuesRequest' };
  class_type Pricing_GetAttributeValuesResponse, { class => 'Paws::Pricing::GetAttributeValuesResponse' };
  class_type Pricing_GetProductsRequest, { class => 'Paws::Pricing::GetProductsRequest' };
  class_type Pricing_GetProductsResponse, { class => 'Paws::Pricing::GetProductsResponse' };
  class_type Pricing_InternalErrorException, { class => 'Paws::Pricing::InternalErrorException' };
  class_type Pricing_InvalidNextTokenException, { class => 'Paws::Pricing::InvalidNextTokenException' };
  class_type Pricing_InvalidParameterException, { class => 'Paws::Pricing::InvalidParameterException' };
  class_type Pricing_NotFoundException, { class => 'Paws::Pricing::NotFoundException' };
  class_type Pricing_Service, { class => 'Paws::Pricing::Service' };

1;
