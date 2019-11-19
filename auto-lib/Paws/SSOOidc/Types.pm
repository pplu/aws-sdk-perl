package Paws::SSOOidc::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type SSOOidc_AccessDeniedException, { class => 'Paws::SSOOidc::AccessDeniedException' };
  class_type SSOOidc_AuthorizationPendingException, { class => 'Paws::SSOOidc::AuthorizationPendingException' };
  class_type SSOOidc_CreateTokenRequest, { class => 'Paws::SSOOidc::CreateTokenRequest' };
  class_type SSOOidc_CreateTokenResponse, { class => 'Paws::SSOOidc::CreateTokenResponse' };
  class_type SSOOidc_ExpiredTokenException, { class => 'Paws::SSOOidc::ExpiredTokenException' };
  class_type SSOOidc_InternalServerException, { class => 'Paws::SSOOidc::InternalServerException' };
  class_type SSOOidc_InvalidClientException, { class => 'Paws::SSOOidc::InvalidClientException' };
  class_type SSOOidc_InvalidClientMetadataException, { class => 'Paws::SSOOidc::InvalidClientMetadataException' };
  class_type SSOOidc_InvalidGrantException, { class => 'Paws::SSOOidc::InvalidGrantException' };
  class_type SSOOidc_InvalidRequestException, { class => 'Paws::SSOOidc::InvalidRequestException' };
  class_type SSOOidc_InvalidScopeException, { class => 'Paws::SSOOidc::InvalidScopeException' };
  class_type SSOOidc_RegisterClientRequest, { class => 'Paws::SSOOidc::RegisterClientRequest' };
  class_type SSOOidc_RegisterClientResponse, { class => 'Paws::SSOOidc::RegisterClientResponse' };
  class_type SSOOidc_SlowDownException, { class => 'Paws::SSOOidc::SlowDownException' };
  class_type SSOOidc_StartDeviceAuthorizationRequest, { class => 'Paws::SSOOidc::StartDeviceAuthorizationRequest' };
  class_type SSOOidc_StartDeviceAuthorizationResponse, { class => 'Paws::SSOOidc::StartDeviceAuthorizationResponse' };
  class_type SSOOidc_UnauthorizedClientException, { class => 'Paws::SSOOidc::UnauthorizedClientException' };
  class_type SSOOidc_UnsupportedGrantTypeException, { class => 'Paws::SSOOidc::UnsupportedGrantTypeException' };

1;
