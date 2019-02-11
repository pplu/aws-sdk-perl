package Paws::CognitoIdp;
  use Moose;
  sub service { 'cognito-idp' }
  sub signing_name { 'cognito-idp' }
  sub version { '2016-04-18' }
  sub target_prefix { 'AWSCognitoIdentityProviderService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddCustomAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AddCustomAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminAddUserToGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminAddUserToGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminConfirmSignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminConfirmSignUp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminCreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminCreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDeleteUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDeleteUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDisableProviderForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDisableProviderForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminDisableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminDisableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminEnableUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminEnableUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminForgetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminForgetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminGetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminGetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminGetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminGetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminInitiateAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminInitiateAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminLinkProviderForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminLinkProviderForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminListGroupsForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminListGroupsForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminListUserAuthEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminListUserAuthEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminRemoveUserFromGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminRemoveUserFromGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminResetUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminResetUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminRespondToAuthChallenge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminRespondToAuthChallenge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminSetUserMFAPreference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminSetUserMFAPreference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminSetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminSetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateAuthEventFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateAuthEventFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateDeviceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateDeviceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUserGlobalSignOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUserGlobalSignOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSoftwareToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AssociateSoftwareToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangePassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ChangePassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ConfirmDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmForgotPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ConfirmForgotPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmSignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ConfirmSignUp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::CreateUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DeleteUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRiskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeRiskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::DescribeUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ForgetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ForgetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ForgotPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ForgotPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCSVHeader {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetCSVHeader', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityProviderByIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetIdentityProviderByIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSigningCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetSigningCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUICustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUICustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserAttributeVerificationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUserAttributeVerificationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserPoolMfaConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetUserPoolMfaConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GlobalSignOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GlobalSignOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::InitiateAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListIdentityProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListResourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUserImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserPoolClients {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUserPoolClients', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUserPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsersInGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ListUsersInGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResendConfirmationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ResendConfirmationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RespondToAuthChallenge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::RespondToAuthChallenge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetRiskConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetRiskConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUICustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUICustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUserMFAPreference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUserMFAPreference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUserPoolMfaConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUserPoolMfaConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::SignUp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::StartUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopUserImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::StopUserImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuthEventFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateAuthEventFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateDeviceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateResourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPoolClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserPoolClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPoolDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::UpdateUserPoolDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifySoftwareToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::VerifySoftwareToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyUserAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::VerifyUserAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub AdminListAllGroupsForUser {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->AdminListGroupsForUser(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->AdminListGroupsForUser(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->AdminListGroupsForUser(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub AdminListAllUserAuthEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->AdminListUserAuthEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->AdminListUserAuthEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->AuthEvents }, @{ $next_result->AuthEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AuthEvents') foreach (@{ $result->AuthEvents });
        $result = $self->AdminListUserAuthEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AuthEvents') foreach (@{ $result->AuthEvents });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub ListAllIdentityProviders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentityProviders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIdentityProviders(@_, NextToken => $next_result->NextToken);
        push @{ $result->Providers }, @{ $next_result->Providers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Providers') foreach (@{ $result->Providers });
        $result = $self->ListIdentityProviders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Providers') foreach (@{ $result->Providers });
    }

    return undef
  }
  sub ListAllResourceServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceServers }, @{ $next_result->ResourceServers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceServers') foreach (@{ $result->ResourceServers });
        $result = $self->ListResourceServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceServers') foreach (@{ $result->ResourceServers });
    }

    return undef
  }
  sub ListAllUserPoolClients {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserPoolClients(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserPoolClients(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserPoolClients }, @{ $next_result->UserPoolClients };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserPoolClients') foreach (@{ $result->UserPoolClients });
        $result = $self->ListUserPoolClients(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserPoolClients') foreach (@{ $result->UserPoolClients });
    }

    return undef
  }
  sub ListAllUserPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserPools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserPools(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserPools }, @{ $next_result->UserPools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserPools') foreach (@{ $result->UserPools });
        $result = $self->ListUserPools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserPools') foreach (@{ $result->UserPools });
    }

    return undef
  }
  sub ListAllUsersInGroup {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsersInGroup(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsersInGroup(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsersInGroup(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AddCustomAttributes AdminAddUserToGroup AdminConfirmSignUp AdminCreateUser AdminDeleteUser AdminDeleteUserAttributes AdminDisableProviderForUser AdminDisableUser AdminEnableUser AdminForgetDevice AdminGetDevice AdminGetUser AdminInitiateAuth AdminLinkProviderForUser AdminListDevices AdminListGroupsForUser AdminListUserAuthEvents AdminRemoveUserFromGroup AdminResetUserPassword AdminRespondToAuthChallenge AdminSetUserMFAPreference AdminSetUserSettings AdminUpdateAuthEventFeedback AdminUpdateDeviceStatus AdminUpdateUserAttributes AdminUserGlobalSignOut AssociateSoftwareToken ChangePassword ConfirmDevice ConfirmForgotPassword ConfirmSignUp CreateGroup CreateIdentityProvider CreateResourceServer CreateUserImportJob CreateUserPool CreateUserPoolClient CreateUserPoolDomain DeleteGroup DeleteIdentityProvider DeleteResourceServer DeleteUser DeleteUserAttributes DeleteUserPool DeleteUserPoolClient DeleteUserPoolDomain DescribeIdentityProvider DescribeResourceServer DescribeRiskConfiguration DescribeUserImportJob DescribeUserPool DescribeUserPoolClient DescribeUserPoolDomain ForgetDevice ForgotPassword GetCSVHeader GetDevice GetGroup GetIdentityProviderByIdentifier GetSigningCertificate GetUICustomization GetUser GetUserAttributeVerificationCode GetUserPoolMfaConfig GlobalSignOut InitiateAuth ListDevices ListGroups ListIdentityProviders ListResourceServers ListUserImportJobs ListUserPoolClients ListUserPools ListUsers ListUsersInGroup ResendConfirmationCode RespondToAuthChallenge SetRiskConfiguration SetUICustomization SetUserMFAPreference SetUserPoolMfaConfig SetUserSettings SignUp StartUserImportJob StopUserImportJob UpdateAuthEventFeedback UpdateDeviceStatus UpdateGroup UpdateIdentityProvider UpdateResourceServer UpdateUserAttributes UpdateUserPool UpdateUserPoolClient UpdateUserPoolDomain VerifySoftwareToken VerifyUserAttribute / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp - Perl Interface to AWS Amazon Cognito Identity Provider

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CognitoIdp');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Using the Amazon Cognito User Pools API, you can create a user pool to
manage directories and users. You can authenticate a user to obtain
tokens related to user identity and access policies.

This API reference provides information about user pools in Amazon
Cognito User Pools.

For more information, see the Amazon Cognito Documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/cognito/>


=head1 METHODS

=head2 AddCustomAttributes

=over

=item CustomAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AddCustomAttributes>

Returns: a L<Paws::CognitoIdp::AddCustomAttributesResponse> instance

Adds additional user attributes to the user pool schema.


=head2 AdminAddUserToGroup

=over

=item GroupName => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminAddUserToGroup>

Returns: nothing

Adds the specified user to the specified group.

Requires developer credentials.


=head2 AdminConfirmSignUp

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminConfirmSignUp>

Returns: a L<Paws::CognitoIdp::AdminConfirmSignUpResponse> instance

Confirms user registration as an admin without using a confirmation
code. Works on any user.

Requires developer credentials.


=head2 AdminCreateUser

=over

=item Username => Str

=item UserPoolId => Str

=item [DesiredDeliveryMediums => ArrayRef[Str|Undef]]

=item [ForceAliasCreation => Bool]

=item [MessageAction => Str]

=item [TemporaryPassword => Str]

=item [UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]

=item [ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminCreateUser>

Returns: a L<Paws::CognitoIdp::AdminCreateUserResponse> instance

Creates a new user in the specified user pool.

If C<MessageAction> is not set, the default is to send a welcome
message via email or phone (SMS).

This message is based on a template that you configured in your call to
or . This template includes your custom sign-up instructions and
placeholders for user name and temporary password.

Alternatively, you can call AdminCreateUser with
E<ldquo>SUPPRESSE<rdquo> for the C<MessageAction> parameter, and Amazon
Cognito will not send any email.

In either case, the user will be in the C<FORCE_CHANGE_PASSWORD> state
until they sign in and change their password.

AdminCreateUser requires developer credentials.


=head2 AdminDeleteUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDeleteUser>

Returns: nothing

Deletes a user as an administrator. Works on any user.

Requires developer credentials.


=head2 AdminDeleteUserAttributes

=over

=item UserAttributeNames => ArrayRef[Str|Undef]

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDeleteUserAttributes>

Returns: a L<Paws::CognitoIdp::AdminDeleteUserAttributesResponse> instance

Deletes the user attributes in a user pool as an administrator. Works
on any user.

Requires developer credentials.


=head2 AdminDisableProviderForUser

=over

=item User => L<Paws::CognitoIdp::ProviderUserIdentifierType>

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDisableProviderForUser>

Returns: a L<Paws::CognitoIdp::AdminDisableProviderForUserResponse> instance

Disables the user from signing in with the specified external (SAML or
social) identity provider. If the user to disable is a Cognito User
Pools native username + password user, they are not permitted to use
their password to sign-in. If the user to disable is a linked external
IdP user, any link between that user and an existing user is removed.
The next time the external user (no longer attached to the previously
linked C<DestinationUser>) signs in, they must create a new user
account. See .

This action is enabled only for admin access and requires developer
credentials.

The C<ProviderName> must match the value specified when creating an IdP
for the pool.

To disable a native username + password user, the C<ProviderName> value
must be C<Cognito> and the C<ProviderAttributeName> must be
C<Cognito_Subject>, with the C<ProviderAttributeValue> being the name
that is used in the user pool for the user.

The C<ProviderAttributeName> must always be C<Cognito_Subject> for
social identity providers. The C<ProviderAttributeValue> must always be
the exact subject that was used when the user was originally linked as
a source user.

For de-linking a SAML identity, there are two scenarios. If the linked
identity has not yet been used to sign-in, the C<ProviderAttributeName>
and C<ProviderAttributeValue> must be the same values that were used
for the C<SourceUser> when the identities were originally linked in the
call. (If the linking was done with C<ProviderAttributeName> set to
C<Cognito_Subject>, the same applies here). However, if the user has
already signed in, the C<ProviderAttributeName> must be
C<Cognito_Subject> and C<ProviderAttributeValue> must be the subject of
the SAML assertion.


=head2 AdminDisableUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDisableUser>

Returns: a L<Paws::CognitoIdp::AdminDisableUserResponse> instance

Disables the specified user as an administrator. Works on any user.

Requires developer credentials.


=head2 AdminEnableUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminEnableUser>

Returns: a L<Paws::CognitoIdp::AdminEnableUserResponse> instance

Enables the specified user as an administrator. Works on any user.

Requires developer credentials.


=head2 AdminForgetDevice

=over

=item DeviceKey => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminForgetDevice>

Returns: nothing

Forgets the device, as an administrator.

Requires developer credentials.


=head2 AdminGetDevice

=over

=item DeviceKey => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminGetDevice>

Returns: a L<Paws::CognitoIdp::AdminGetDeviceResponse> instance

Gets the device, as an administrator.

Requires developer credentials.


=head2 AdminGetUser

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminGetUser>

Returns: a L<Paws::CognitoIdp::AdminGetUserResponse> instance

Gets the specified user by user name in a user pool as an
administrator. Works on any user.

Requires developer credentials.


=head2 AdminInitiateAuth

=over

=item AuthFlow => Str

=item ClientId => Str

=item UserPoolId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [AuthParameters => L<Paws::CognitoIdp::AuthParametersType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [ContextData => L<Paws::CognitoIdp::ContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminInitiateAuth>

Returns: a L<Paws::CognitoIdp::AdminInitiateAuthResponse> instance

Initiates the authentication flow, as an administrator.

Requires developer credentials.


=head2 AdminLinkProviderForUser

=over

=item DestinationUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

=item SourceUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminLinkProviderForUser>

Returns: a L<Paws::CognitoIdp::AdminLinkProviderForUserResponse> instance

Links an existing user account in a user pool (C<DestinationUser>) to
an identity from an external identity provider (C<SourceUser>) based on
a specified attribute name and value from the external identity
provider. This allows you to create a link from the existing user
account to an external federated user identity that has not yet been
used to sign in, so that the federated user identity can be used to
sign in as the existing user account.

For example, if there is an existing user with a username and password,
this API links that user to a federated user identity, so that when the
federated user identity is used, the user signs in as the existing user
account.

Because this API allows a user with an external federated identity to
sign in as an existing user in the user pool, it is critical that it
only be used with external identity providers and provider attributes
that have been trusted by the application owner.

See also .

This action is enabled only for admin access and requires developer
credentials.


=head2 AdminListDevices

=over

=item Username => Str

=item UserPoolId => Str

=item [Limit => Int]

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminListDevices>

Returns: a L<Paws::CognitoIdp::AdminListDevicesResponse> instance

Lists devices, as an administrator.

Requires developer credentials.


=head2 AdminListGroupsForUser

=over

=item Username => Str

=item UserPoolId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminListGroupsForUser>

Returns: a L<Paws::CognitoIdp::AdminListGroupsForUserResponse> instance

Lists the groups that the user belongs to.

Requires developer credentials.


=head2 AdminListUserAuthEvents

=over

=item Username => Str

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminListUserAuthEvents>

Returns: a L<Paws::CognitoIdp::AdminListUserAuthEventsResponse> instance

Lists a history of user activity and any risks detected as part of
Amazon Cognito advanced security.


=head2 AdminRemoveUserFromGroup

=over

=item GroupName => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminRemoveUserFromGroup>

Returns: nothing

Removes the specified user from the specified group.

Requires developer credentials.


=head2 AdminResetUserPassword

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminResetUserPassword>

Returns: a L<Paws::CognitoIdp::AdminResetUserPasswordResponse> instance

Resets the specified user's password in a user pool as an
administrator. Works on any user.

When a developer calls this API, the current password is invalidated,
so it must be changed. If a user tries to sign in after the API is
called, the app will get a PasswordResetRequiredException exception
back and should direct the user down the flow to reset the password,
which is the same as the forgot password flow. In addition, if the user
pool has phone verification selected and a verified phone number exists
for the user, or if email verification is selected and a verified email
exists for the user, calling this API will also result in sending a
message to the end user with the code to change their password.

Requires developer credentials.


=head2 AdminRespondToAuthChallenge

=over

=item ChallengeName => Str

=item ClientId => Str

=item UserPoolId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>]

=item [ContextData => L<Paws::CognitoIdp::ContextDataType>]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminRespondToAuthChallenge>

Returns: a L<Paws::CognitoIdp::AdminRespondToAuthChallengeResponse> instance

Responds to an authentication challenge, as an administrator.

Requires developer credentials.


=head2 AdminSetUserMFAPreference

=over

=item Username => Str

=item UserPoolId => Str

=item [SMSMfaSettings => L<Paws::CognitoIdp::SMSMfaSettingsType>]

=item [SoftwareTokenMfaSettings => L<Paws::CognitoIdp::SoftwareTokenMfaSettingsType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminSetUserMFAPreference>

Returns: a L<Paws::CognitoIdp::AdminSetUserMFAPreferenceResponse> instance

Sets the user's multi-factor authentication (MFA) preference.


=head2 AdminSetUserSettings

=over

=item MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminSetUserSettings>

Returns: a L<Paws::CognitoIdp::AdminSetUserSettingsResponse> instance

Sets all the user settings for a specified user name. Works on any
user.

Requires developer credentials.


=head2 AdminUpdateAuthEventFeedback

=over

=item EventId => Str

=item FeedbackValue => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateAuthEventFeedback>

Returns: a L<Paws::CognitoIdp::AdminUpdateAuthEventFeedbackResponse> instance

Provides feedback for an authentication event as to whether it was from
a valid user. This feedback is used for improving the risk evaluation
decision for the user pool as part of Amazon Cognito advanced security.


=head2 AdminUpdateDeviceStatus

=over

=item DeviceKey => Str

=item Username => Str

=item UserPoolId => Str

=item [DeviceRememberedStatus => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateDeviceStatus>

Returns: a L<Paws::CognitoIdp::AdminUpdateDeviceStatusResponse> instance

Updates the device status as an administrator.

Requires developer credentials.


=head2 AdminUpdateUserAttributes

=over

=item UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateUserAttributes>

Returns: a L<Paws::CognitoIdp::AdminUpdateUserAttributesResponse> instance

Updates the specified user's attributes, including developer
attributes, as an administrator. Works on any user.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.

In addition to updating user attributes, this API can also be used to
mark phone and email as verified.

Requires developer credentials.


=head2 AdminUserGlobalSignOut

=over

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUserGlobalSignOut>

Returns: a L<Paws::CognitoIdp::AdminUserGlobalSignOutResponse> instance

Signs out users from all devices, as an administrator.

Requires developer credentials.


=head2 AssociateSoftwareToken

=over

=item [AccessToken => Str]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::AssociateSoftwareToken>

Returns: a L<Paws::CognitoIdp::AssociateSoftwareTokenResponse> instance

Returns a unique generated shared secret key code for the user account.
The request takes an access token or a session string, but not both.


=head2 ChangePassword

=over

=item AccessToken => Str

=item PreviousPassword => Str

=item ProposedPassword => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ChangePassword>

Returns: a L<Paws::CognitoIdp::ChangePasswordResponse> instance

Changes the password for a specified user in a user pool.


=head2 ConfirmDevice

=over

=item AccessToken => Str

=item DeviceKey => Str

=item [DeviceName => Str]

=item [DeviceSecretVerifierConfig => L<Paws::CognitoIdp::DeviceSecretVerifierConfigType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmDevice>

Returns: a L<Paws::CognitoIdp::ConfirmDeviceResponse> instance

Confirms tracking of the device. This API call is the call that begins
device tracking.


=head2 ConfirmForgotPassword

=over

=item ClientId => Str

=item ConfirmationCode => Str

=item Password => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmForgotPassword>

Returns: a L<Paws::CognitoIdp::ConfirmForgotPasswordResponse> instance

Allows a user to enter a confirmation code to reset a forgotten
password.


=head2 ConfirmSignUp

=over

=item ClientId => Str

=item ConfirmationCode => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ForceAliasCreation => Bool]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmSignUp>

Returns: a L<Paws::CognitoIdp::ConfirmSignUpResponse> instance

Confirms registration of a user and handles the existing alias from a
previous user.


=head2 CreateGroup

=over

=item GroupName => Str

=item UserPoolId => Str

=item [Description => Str]

=item [Precedence => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateGroup>

Returns: a L<Paws::CognitoIdp::CreateGroupResponse> instance

Creates a new group in the specified user pool.

Requires developer credentials.


=head2 CreateIdentityProvider

=over

=item ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>

=item ProviderName => Str

=item ProviderType => Str

=item UserPoolId => Str

=item [AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>]

=item [IdpIdentifiers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateIdentityProvider>

Returns: a L<Paws::CognitoIdp::CreateIdentityProviderResponse> instance

Creates an identity provider for a user pool.


=head2 CreateResourceServer

=over

=item Identifier => Str

=item Name => Str

=item UserPoolId => Str

=item [Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateResourceServer>

Returns: a L<Paws::CognitoIdp::CreateResourceServerResponse> instance

Creates a new OAuth2.0 resource server and defines custom scopes in it.


=head2 CreateUserImportJob

=over

=item CloudWatchLogsRoleArn => Str

=item JobName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserImportJob>

Returns: a L<Paws::CognitoIdp::CreateUserImportJobResponse> instance

Creates the user import job.


=head2 CreateUserPool

=over

=item PoolName => Str

=item [AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>]

=item [AliasAttributes => ArrayRef[Str|Undef]]

=item [AutoVerifiedAttributes => ArrayRef[Str|Undef]]

=item [DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>]

=item [EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>]

=item [EmailVerificationMessage => Str]

=item [EmailVerificationSubject => Str]

=item [LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>]

=item [MfaConfiguration => Str]

=item [Policies => L<Paws::CognitoIdp::UserPoolPolicyType>]

=item [Schema => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]]

=item [SmsAuthenticationMessage => Str]

=item [SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>]

=item [SmsVerificationMessage => Str]

=item [UsernameAttributes => ArrayRef[Str|Undef]]

=item [UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>]

=item [UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>]

=item [VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPool>

Returns: a L<Paws::CognitoIdp::CreateUserPoolResponse> instance

Creates a new Amazon Cognito user pool and sets the password policy for
the pool.


=head2 CreateUserPoolClient

=over

=item ClientName => Str

=item UserPoolId => Str

=item [AllowedOAuthFlows => ArrayRef[Str|Undef]]

=item [AllowedOAuthFlowsUserPoolClient => Bool]

=item [AllowedOAuthScopes => ArrayRef[Str|Undef]]

=item [AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>]

=item [CallbackURLs => ArrayRef[Str|Undef]]

=item [DefaultRedirectURI => Str]

=item [ExplicitAuthFlows => ArrayRef[Str|Undef]]

=item [GenerateSecret => Bool]

=item [LogoutURLs => ArrayRef[Str|Undef]]

=item [ReadAttributes => ArrayRef[Str|Undef]]

=item [RefreshTokenValidity => Int]

=item [SupportedIdentityProviders => ArrayRef[Str|Undef]]

=item [WriteAttributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPoolClient>

Returns: a L<Paws::CognitoIdp::CreateUserPoolClientResponse> instance

Creates the user pool client.


=head2 CreateUserPoolDomain

=over

=item Domain => Str

=item UserPoolId => Str

=item [CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPoolDomain>

Returns: a L<Paws::CognitoIdp::CreateUserPoolDomainResponse> instance

Creates a new domain for a user pool.


=head2 DeleteGroup

=over

=item GroupName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteGroup>

Returns: nothing

Deletes a group. Currently only groups with no members can be deleted.

Requires developer credentials.


=head2 DeleteIdentityProvider

=over

=item ProviderName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteIdentityProvider>

Returns: nothing

Deletes an identity provider for a user pool.


=head2 DeleteResourceServer

=over

=item Identifier => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteResourceServer>

Returns: nothing

Deletes a resource server.


=head2 DeleteUser

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUser>

Returns: nothing

Allows a user to delete himself or herself.


=head2 DeleteUserAttributes

=over

=item AccessToken => Str

=item UserAttributeNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserAttributes>

Returns: a L<Paws::CognitoIdp::DeleteUserAttributesResponse> instance

Deletes the attributes for a user.


=head2 DeleteUserPool

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPool>

Returns: nothing

Deletes the specified Amazon Cognito user pool.


=head2 DeleteUserPoolClient

=over

=item ClientId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPoolClient>

Returns: nothing

Allows the developer to delete the user pool client.


=head2 DeleteUserPoolDomain

=over

=item Domain => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPoolDomain>

Returns: a L<Paws::CognitoIdp::DeleteUserPoolDomainResponse> instance

Deletes a domain for a user pool.


=head2 DescribeIdentityProvider

=over

=item ProviderName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeIdentityProvider>

Returns: a L<Paws::CognitoIdp::DescribeIdentityProviderResponse> instance

Gets information about a specific identity provider.


=head2 DescribeResourceServer

=over

=item Identifier => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeResourceServer>

Returns: a L<Paws::CognitoIdp::DescribeResourceServerResponse> instance

Describes a resource server.


=head2 DescribeRiskConfiguration

=over

=item UserPoolId => Str

=item [ClientId => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeRiskConfiguration>

Returns: a L<Paws::CognitoIdp::DescribeRiskConfigurationResponse> instance

Describes the risk configuration.


=head2 DescribeUserImportJob

=over

=item JobId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserImportJob>

Returns: a L<Paws::CognitoIdp::DescribeUserImportJobResponse> instance

Describes the user import job.


=head2 DescribeUserPool

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPool>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolResponse> instance

Returns the configuration information and metadata of the specified
user pool.


=head2 DescribeUserPoolClient

=over

=item ClientId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPoolClient>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolClientResponse> instance

Client method for returning the configuration information and metadata
of the specified user pool app client.


=head2 DescribeUserPoolDomain

=over

=item Domain => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPoolDomain>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolDomainResponse> instance

Gets information about a domain.


=head2 ForgetDevice

=over

=item DeviceKey => Str

=item [AccessToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ForgetDevice>

Returns: nothing

Forgets the specified device.


=head2 ForgotPassword

=over

=item ClientId => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ForgotPassword>

Returns: a L<Paws::CognitoIdp::ForgotPasswordResponse> instance

Calling this API causes a message to be sent to the end user with a
confirmation code that is required to change the user's password. For
the C<Username> parameter, you can use the username or user alias. If a
verified phone number exists for the user, the confirmation code is
sent to the phone number. Otherwise, if a verified email exists, the
confirmation code is sent to the email. If neither a verified phone
number nor a verified email exists, C<InvalidParameterException> is
thrown. To use the confirmation code for resetting the password, call .


=head2 GetCSVHeader

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetCSVHeader>

Returns: a L<Paws::CognitoIdp::GetCSVHeaderResponse> instance

Gets the header information for the .csv file to be used as input for
the user import job.


=head2 GetDevice

=over

=item DeviceKey => Str

=item [AccessToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetDevice>

Returns: a L<Paws::CognitoIdp::GetDeviceResponse> instance

Gets the device.


=head2 GetGroup

=over

=item GroupName => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetGroup>

Returns: a L<Paws::CognitoIdp::GetGroupResponse> instance

Gets a group.

Requires developer credentials.


=head2 GetIdentityProviderByIdentifier

=over

=item IdpIdentifier => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetIdentityProviderByIdentifier>

Returns: a L<Paws::CognitoIdp::GetIdentityProviderByIdentifierResponse> instance

Gets the specified identity provider.


=head2 GetSigningCertificate

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetSigningCertificate>

Returns: a L<Paws::CognitoIdp::GetSigningCertificateResponse> instance

This method takes a user pool ID, and returns the signing certificate.


=head2 GetUICustomization

=over

=item UserPoolId => Str

=item [ClientId => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUICustomization>

Returns: a L<Paws::CognitoIdp::GetUICustomizationResponse> instance

Gets the UI Customization information for a particular app client's app
UI, if there is something set. If nothing is set for the particular
client, but there is an existing pool level customization (app
C<clientId> will be C<ALL>), then that is returned. If nothing is
present, then an empty shape is returned.


=head2 GetUser

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUser>

Returns: a L<Paws::CognitoIdp::GetUserResponse> instance

Gets the user attributes and metadata for a user.


=head2 GetUserAttributeVerificationCode

=over

=item AccessToken => Str

=item AttributeName => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUserAttributeVerificationCode>

Returns: a L<Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse> instance

Gets the user attribute verification code for the specified attribute
name.


=head2 GetUserPoolMfaConfig

=over

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GetUserPoolMfaConfig>

Returns: a L<Paws::CognitoIdp::GetUserPoolMfaConfigResponse> instance

Gets the user pool multi-factor authentication (MFA) configuration.


=head2 GlobalSignOut

=over

=item AccessToken => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::GlobalSignOut>

Returns: a L<Paws::CognitoIdp::GlobalSignOutResponse> instance

Signs out users from all devices.


=head2 InitiateAuth

=over

=item AuthFlow => Str

=item ClientId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [AuthParameters => L<Paws::CognitoIdp::AuthParametersType>]

=item [ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::InitiateAuth>

Returns: a L<Paws::CognitoIdp::InitiateAuthResponse> instance

Initiates the authentication flow.


=head2 ListDevices

=over

=item AccessToken => Str

=item [Limit => Int]

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListDevices>

Returns: a L<Paws::CognitoIdp::ListDevicesResponse> instance

Lists the devices.


=head2 ListGroups

=over

=item UserPoolId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListGroups>

Returns: a L<Paws::CognitoIdp::ListGroupsResponse> instance

Lists the groups associated with a user pool.

Requires developer credentials.


=head2 ListIdentityProviders

=over

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListIdentityProviders>

Returns: a L<Paws::CognitoIdp::ListIdentityProvidersResponse> instance

Lists information about all identity providers for a user pool.


=head2 ListResourceServers

=over

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListResourceServers>

Returns: a L<Paws::CognitoIdp::ListResourceServersResponse> instance

Lists the resource servers for a user pool.


=head2 ListUserImportJobs

=over

=item MaxResults => Int

=item UserPoolId => Str

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserImportJobs>

Returns: a L<Paws::CognitoIdp::ListUserImportJobsResponse> instance

Lists the user import jobs.


=head2 ListUserPoolClients

=over

=item UserPoolId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserPoolClients>

Returns: a L<Paws::CognitoIdp::ListUserPoolClientsResponse> instance

Lists the clients that have been created for the specified user pool.


=head2 ListUserPools

=over

=item MaxResults => Int

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserPools>

Returns: a L<Paws::CognitoIdp::ListUserPoolsResponse> instance

Lists the user pools associated with an AWS account.


=head2 ListUsers

=over

=item UserPoolId => Str

=item [AttributesToGet => ArrayRef[Str|Undef]]

=item [Filter => Str]

=item [Limit => Int]

=item [PaginationToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUsers>

Returns: a L<Paws::CognitoIdp::ListUsersResponse> instance

Lists the users in the Amazon Cognito user pool.


=head2 ListUsersInGroup

=over

=item GroupName => Str

=item UserPoolId => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ListUsersInGroup>

Returns: a L<Paws::CognitoIdp::ListUsersInGroupResponse> instance

Lists the users in the specified group.

Requires developer credentials.


=head2 ResendConfirmationCode

=over

=item ClientId => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [SecretHash => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::ResendConfirmationCode>

Returns: a L<Paws::CognitoIdp::ResendConfirmationCodeResponse> instance

Resends the confirmation (for confirmation of registration) to a
specific user in the user pool.


=head2 RespondToAuthChallenge

=over

=item ChallengeName => Str

=item ClientId => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>]

=item [Session => Str]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::RespondToAuthChallenge>

Returns: a L<Paws::CognitoIdp::RespondToAuthChallengeResponse> instance

Responds to the authentication challenge.


=head2 SetRiskConfiguration

=over

=item UserPoolId => Str

=item [AccountTakeoverRiskConfiguration => L<Paws::CognitoIdp::AccountTakeoverRiskConfigurationType>]

=item [ClientId => Str]

=item [CompromisedCredentialsRiskConfiguration => L<Paws::CognitoIdp::CompromisedCredentialsRiskConfigurationType>]

=item [RiskExceptionConfiguration => L<Paws::CognitoIdp::RiskExceptionConfigurationType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetRiskConfiguration>

Returns: a L<Paws::CognitoIdp::SetRiskConfigurationResponse> instance

Configures actions on detected risks. To delete the risk configuration
for C<UserPoolId> or C<ClientId>, pass null values for all four
configuration types.

To enable Amazon Cognito advanced security features, update the user
pool to include the C<UserPoolAddOns> keyC<AdvancedSecurityMode>.

See .


=head2 SetUICustomization

=over

=item UserPoolId => Str

=item [ClientId => Str]

=item [CSS => Str]

=item [ImageFile => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUICustomization>

Returns: a L<Paws::CognitoIdp::SetUICustomizationResponse> instance

Sets the UI customization information for a user pool's built-in app
UI.

You can specify app UI customization settings for a single client (with
a specific C<clientId>) or for all clients (by setting the C<clientId>
to C<ALL>). If you specify C<ALL>, the default configuration will be
used for every client that has no UI customization set previously. If
you specify UI customization settings for a particular client, it will
no longer fall back to the C<ALL> configuration.

To use this API, your user pool must have a domain associated with it.
Otherwise, there is no place to host the app's pages, and the service
will throw an error.


=head2 SetUserMFAPreference

=over

=item AccessToken => Str

=item [SMSMfaSettings => L<Paws::CognitoIdp::SMSMfaSettingsType>]

=item [SoftwareTokenMfaSettings => L<Paws::CognitoIdp::SoftwareTokenMfaSettingsType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserMFAPreference>

Returns: a L<Paws::CognitoIdp::SetUserMFAPreferenceResponse> instance

Set the user's multi-factor authentication (MFA) method preference.


=head2 SetUserPoolMfaConfig

=over

=item UserPoolId => Str

=item [MfaConfiguration => Str]

=item [SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>]

=item [SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserPoolMfaConfig>

Returns: a L<Paws::CognitoIdp::SetUserPoolMfaConfigResponse> instance

Set the user pool MFA configuration.


=head2 SetUserSettings

=over

=item AccessToken => Str

=item MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserSettings>

Returns: a L<Paws::CognitoIdp::SetUserSettingsResponse> instance

Sets the user settings like multi-factor authentication (MFA). If MFA
is to be removed for a particular attribute pass the attribute with
code delivery as null. If null list is passed, all MFA options are
removed.


=head2 SignUp

=over

=item ClientId => Str

=item Password => Str

=item Username => Str

=item [AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>]

=item [SecretHash => Str]

=item [UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]

=item [UserContextData => L<Paws::CognitoIdp::UserContextDataType>]

=item [ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::SignUp>

Returns: a L<Paws::CognitoIdp::SignUpResponse> instance

Registers the user in the specified user pool and creates a user name,
password, and user attributes.


=head2 StartUserImportJob

=over

=item JobId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::StartUserImportJob>

Returns: a L<Paws::CognitoIdp::StartUserImportJobResponse> instance

Starts the user import.


=head2 StopUserImportJob

=over

=item JobId => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::StopUserImportJob>

Returns: a L<Paws::CognitoIdp::StopUserImportJobResponse> instance

Stops the user import job.


=head2 UpdateAuthEventFeedback

=over

=item EventId => Str

=item FeedbackToken => Str

=item FeedbackValue => Str

=item Username => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateAuthEventFeedback>

Returns: a L<Paws::CognitoIdp::UpdateAuthEventFeedbackResponse> instance

Provides the feedback for an authentication event whether it was from a
valid user or not. This feedback is used for improving the risk
evaluation decision for the user pool as part of Amazon Cognito
advanced security.


=head2 UpdateDeviceStatus

=over

=item AccessToken => Str

=item DeviceKey => Str

=item [DeviceRememberedStatus => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateDeviceStatus>

Returns: a L<Paws::CognitoIdp::UpdateDeviceStatusResponse> instance

Updates the device status.


=head2 UpdateGroup

=over

=item GroupName => Str

=item UserPoolId => Str

=item [Description => Str]

=item [Precedence => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateGroup>

Returns: a L<Paws::CognitoIdp::UpdateGroupResponse> instance

Updates the specified group with the specified attributes.

Requires developer credentials.


=head2 UpdateIdentityProvider

=over

=item ProviderName => Str

=item UserPoolId => Str

=item [AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>]

=item [IdpIdentifiers => ArrayRef[Str|Undef]]

=item [ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateIdentityProvider>

Returns: a L<Paws::CognitoIdp::UpdateIdentityProviderResponse> instance

Updates identity provider information for a user pool.


=head2 UpdateResourceServer

=over

=item Identifier => Str

=item Name => Str

=item UserPoolId => Str

=item [Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateResourceServer>

Returns: a L<Paws::CognitoIdp::UpdateResourceServerResponse> instance

Updates the name and scopes of resource server. All other fields are
read-only.


=head2 UpdateUserAttributes

=over

=item AccessToken => Str

=item UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserAttributes>

Returns: a L<Paws::CognitoIdp::UpdateUserAttributesResponse> instance

Allows a user to update a specific attribute (one at a time).


=head2 UpdateUserPool

=over

=item UserPoolId => Str

=item [AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>]

=item [AutoVerifiedAttributes => ArrayRef[Str|Undef]]

=item [DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>]

=item [EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>]

=item [EmailVerificationMessage => Str]

=item [EmailVerificationSubject => Str]

=item [LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>]

=item [MfaConfiguration => Str]

=item [Policies => L<Paws::CognitoIdp::UserPoolPolicyType>]

=item [SmsAuthenticationMessage => Str]

=item [SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>]

=item [SmsVerificationMessage => Str]

=item [UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>]

=item [UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>]

=item [VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPool>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolResponse> instance

Updates the specified user pool with the specified attributes. If you
don't provide a value for an attribute, it will be set to the default
value. You can get a list of the current user pool settings with .


=head2 UpdateUserPoolClient

=over

=item ClientId => Str

=item UserPoolId => Str

=item [AllowedOAuthFlows => ArrayRef[Str|Undef]]

=item [AllowedOAuthFlowsUserPoolClient => Bool]

=item [AllowedOAuthScopes => ArrayRef[Str|Undef]]

=item [AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>]

=item [CallbackURLs => ArrayRef[Str|Undef]]

=item [ClientName => Str]

=item [DefaultRedirectURI => Str]

=item [ExplicitAuthFlows => ArrayRef[Str|Undef]]

=item [LogoutURLs => ArrayRef[Str|Undef]]

=item [ReadAttributes => ArrayRef[Str|Undef]]

=item [RefreshTokenValidity => Int]

=item [SupportedIdentityProviders => ArrayRef[Str|Undef]]

=item [WriteAttributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPoolClient>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolClientResponse> instance

Updates the specified user pool app client with the specified
attributes. If you don't provide a value for an attribute, it will be
set to the default value. You can get a list of the current user pool
app client settings with .


=head2 UpdateUserPoolDomain

=over

=item CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>

=item Domain => Str

=item UserPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPoolDomain>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolDomainResponse> instance

Updates the Secure Sockets Layer (SSL) certificate for the custom
domain for your user pool.

You can use this operation to provide the Amazon Resource Name (ARN) of
a new certificate to Amazon Cognito. You cannot use it to change the
domain for a user pool.

A custom domain is used to host the Amazon Cognito hosted UI, which
provides sign-up and sign-in pages for your application. When you set
up a custom domain, you provide a certificate that you manage with AWS
Certificate Manager (ACM). When necessary, you can use this operation
to change the certificate that you applied to your custom domain.

Usually, this is unnecessary following routine certificate renewal with
ACM. When you renew your existing certificate in ACM, the ARN for your
certificate remains the same, and your custom domain uses the new
certificate automatically.

However, if you replace your existing certificate with a new one, ACM
gives the new certificate a new ARN. To apply the new certificate to
your custom domain, you must provide this ARN to Amazon Cognito.

When you add your new certificate in ACM, you must choose US East (N.
Virginia) as the AWS Region.

After you submit your request, Amazon Cognito requires up to 1 hour to
distribute your new certificate to your custom domain.

For more information about adding a custom domain to your user pool,
see Using Your Own Domain for the Hosted UI
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).


=head2 VerifySoftwareToken

=over

=item UserCode => Str

=item [AccessToken => Str]

=item [FriendlyDeviceName => Str]

=item [Session => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdp::VerifySoftwareToken>

Returns: a L<Paws::CognitoIdp::VerifySoftwareTokenResponse> instance

Use this API to register a user's entered TOTP code and mark the user's
software token MFA status as "verified" if successful. The request
takes an access token or a session string, but not both.


=head2 VerifyUserAttribute

=over

=item AccessToken => Str

=item AttributeName => Str

=item Code => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdp::VerifyUserAttribute>

Returns: a L<Paws::CognitoIdp::VerifyUserAttributeResponse> instance

Verifies the specified user attributes in the user pool.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 AdminListAllGroupsForUser(sub { },Username => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])

=head2 AdminListAllGroupsForUser(Username => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::AdminListGroupsForUserResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 AdminListAllUserAuthEvents(sub { },Username => Str, UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 AdminListAllUserAuthEvents(Username => Str, UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AuthEvents, passing the object as the first parameter, and the string 'AuthEvents' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::AdminListUserAuthEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },UserPoolId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllGroups(UserPoolId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdentityProviders(sub { },UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIdentityProviders(UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Providers, passing the object as the first parameter, and the string 'Providers' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListIdentityProvidersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceServers(sub { },UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResourceServers(UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceServers, passing the object as the first parameter, and the string 'ResourceServers' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListResourceServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserPoolClients(sub { },UserPoolId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUserPoolClients(UserPoolId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserPoolClients, passing the object as the first parameter, and the string 'UserPoolClients' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUserPoolClientsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserPools(sub { },MaxResults => Int, [NextToken => Str])

=head2 ListAllUserPools(MaxResults => Int, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserPools, passing the object as the first parameter, and the string 'UserPools' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUserPoolsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsersInGroup(sub { },GroupName => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])

=head2 ListAllUsersInGroup(GroupName => Str, UserPoolId => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::CognitoIdp::ListUsersInGroupResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

