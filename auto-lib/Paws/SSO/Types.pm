package Paws::SSO::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type SSO_AccountInfo, { class => 'Paws::SSO::AccountInfo' };
  class_type SSO_GetRoleCredentialsRequest, { class => 'Paws::SSO::GetRoleCredentialsRequest' };
  class_type SSO_GetRoleCredentialsResponse, { class => 'Paws::SSO::GetRoleCredentialsResponse' };
  class_type SSO_InvalidRequestException, { class => 'Paws::SSO::InvalidRequestException' };
  class_type SSO_ListAccountRolesRequest, { class => 'Paws::SSO::ListAccountRolesRequest' };
  class_type SSO_ListAccountRolesResponse, { class => 'Paws::SSO::ListAccountRolesResponse' };
  class_type SSO_ListAccountsRequest, { class => 'Paws::SSO::ListAccountsRequest' };
  class_type SSO_ListAccountsResponse, { class => 'Paws::SSO::ListAccountsResponse' };
  class_type SSO_LogoutRequest, { class => 'Paws::SSO::LogoutRequest' };
  class_type SSO_ResourceNotFoundException, { class => 'Paws::SSO::ResourceNotFoundException' };
  class_type SSO_RoleCredentials, { class => 'Paws::SSO::RoleCredentials' };
  class_type SSO_RoleInfo, { class => 'Paws::SSO::RoleInfo' };
  class_type SSO_TooManyRequestsException, { class => 'Paws::SSO::TooManyRequestsException' };
  class_type SSO_UnauthorizedException, { class => 'Paws::SSO::UnauthorizedException' };

1;
