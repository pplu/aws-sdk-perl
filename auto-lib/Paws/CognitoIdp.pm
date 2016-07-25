package Paws::CognitoIdp;
  use Moose;
  sub service { 'cognito-idp' }
  sub version { '2016-04-18' }
  sub target_prefix { 'AWSCognitoIdentityProviderService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddCustomAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AddCustomAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminConfirmSignUp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminConfirmSignUp', @_);
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
  sub AdminGetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminGetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminResetUserPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminResetUserPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminSetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminSetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdminUpdateUserAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::AdminUpdateUserAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangePassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ChangePassword', @_);
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
  sub ForgotPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ForgotPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJWKS {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetJWKS', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOpenIdConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::GetOpenIdConfiguration', @_);
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
  sub ResendConfirmationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::ResendConfirmationCode', @_);
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
  sub VerifyUserAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdp::VerifyUserAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/AddCustomAttributes AdminConfirmSignUp AdminDeleteUser AdminDeleteUserAttributes AdminDisableUser AdminEnableUser AdminGetUser AdminResetUserPassword AdminSetUserSettings AdminUpdateUserAttributes ChangePassword ConfirmForgotPassword ConfirmSignUp CreateUserPool CreateUserPoolClient DeleteUser DeleteUserAttributes DeleteUserPool DeleteUserPoolClient DescribeUserPool DescribeUserPoolClient ForgotPassword GetJWKS GetOpenIdConfiguration GetUser GetUserAttributeVerificationCode ListUserPoolClients ListUserPools ListUsers ResendConfirmationCode SetUserSettings SignUp UpdateUserAttributes UpdateUserPool UpdateUserPoolClient VerifyUserAttribute / }

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

You can create a user pool in Amazon Cognito Identity to manage
directories and users. You can authenticate a user to obtain tokens
related to user identity and access policies.

This API reference provides information about user pools in Amazon
Cognito Identity, which is a new capability that is available as a
beta.

=head1 METHODS

=head2 AddCustomAttributes(CustomAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>], UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AddCustomAttributes>

Returns: a L<Paws::CognitoIdp::AddCustomAttributesResponse> instance

  Adds additional user attributes to the user pool schema.


=head2 AdminConfirmSignUp(Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminConfirmSignUp>

Returns: a L<Paws::CognitoIdp::AdminConfirmSignUpResponse> instance

  Confirms user registration as an admin without using a confirmation
code. Works on any user.


=head2 AdminDeleteUser(Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDeleteUser>

Returns: nothing

  Deletes a user as an administrator. Works on any user.


=head2 AdminDeleteUserAttributes(UserAttributeNames => ArrayRef[Str], Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDeleteUserAttributes>

Returns: a L<Paws::CognitoIdp::AdminDeleteUserAttributesResponse> instance

  Deletes the user attributes in a user pool as an administrator. Works
on any user.


=head2 AdminDisableUser(Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminDisableUser>

Returns: a L<Paws::CognitoIdp::AdminDisableUserResponse> instance

  Disables the specified user as an administrator. Works on any user.


=head2 AdminEnableUser(Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminEnableUser>

Returns: a L<Paws::CognitoIdp::AdminEnableUserResponse> instance

  Enables the specified user as an administrator. Works on any user.


=head2 AdminGetUser(Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminGetUser>

Returns: a L<Paws::CognitoIdp::AdminGetUserResponse> instance

  Gets the specified user by user name in a user pool as an
administrator. Works on any user.


=head2 AdminResetUserPassword(Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminResetUserPassword>

Returns: a L<Paws::CognitoIdp::AdminResetUserPasswordResponse> instance

  Resets the specified user's password in a user pool as an
administrator. Works on any user.


=head2 AdminSetUserSettings(MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>], Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminSetUserSettings>

Returns: a L<Paws::CognitoIdp::AdminSetUserSettingsResponse> instance

  Sets all the user settings for a specified user name. Works on any
user.


=head2 AdminUpdateUserAttributes(UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>], Username => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::AdminUpdateUserAttributes>

Returns: a L<Paws::CognitoIdp::AdminUpdateUserAttributesResponse> instance

  Updates the specified user's attributes, including developer
attributes, as an administrator. Works on any user.


=head2 ChangePassword(PreviousPassword => Str, ProposedPassword => Str, [AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ChangePassword>

Returns: a L<Paws::CognitoIdp::ChangePasswordResponse> instance

  Changes the password for a specified user in a user pool.


=head2 ConfirmForgotPassword(ClientId => Str, ConfirmationCode => Str, Password => Str, Username => Str, [SecretHash => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmForgotPassword>

Returns: a L<Paws::CognitoIdp::ConfirmForgotPasswordResponse> instance

  Allows a user to enter a code provided when they reset their password
to update their password.


=head2 ConfirmSignUp(ClientId => Str, ConfirmationCode => Str, Username => Str, [ForceAliasCreation => Bool, SecretHash => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ConfirmSignUp>

Returns: a L<Paws::CognitoIdp::ConfirmSignUpResponse> instance

  Confirms registration of a user and handles the existing alias from a
previous user.


=head2 CreateUserPool(PoolName => Str, [AliasAttributes => ArrayRef[Str], AutoVerifiedAttributes => ArrayRef[Str], EmailVerificationMessage => Str, EmailVerificationSubject => Str, LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>, MfaConfiguration => Str, Policies => L<Paws::CognitoIdp::UserPoolPolicyType>, SmsAuthenticationMessage => Str, SmsVerificationMessage => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPool>

Returns: a L<Paws::CognitoIdp::CreateUserPoolResponse> instance

  Creates a new Amazon Cognito user pool and sets the password policy for
the pool.


=head2 CreateUserPoolClient(ClientName => Str, UserPoolId => Str, [GenerateSecret => Bool])

Each argument is described in detail in: L<Paws::CognitoIdp::CreateUserPoolClient>

Returns: a L<Paws::CognitoIdp::CreateUserPoolClientResponse> instance

  Creates the user pool client.


=head2 DeleteUser([AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUser>

Returns: nothing

  Allows a user to delete one's self.


=head2 DeleteUserAttributes(UserAttributeNames => ArrayRef[Str], [AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserAttributes>

Returns: a L<Paws::CognitoIdp::DeleteUserAttributesResponse> instance

  Deletes the attributes for a user.


=head2 DeleteUserPool(UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPool>

Returns: nothing

  Deletes the specified Amazon Cognito user pool.


=head2 DeleteUserPoolClient(ClientId => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::DeleteUserPoolClient>

Returns: nothing

  Allows the developer to delete the user pool client.


=head2 DescribeUserPool(UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPool>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolResponse> instance

  Returns the configuration information and metadata of the specified
user pool.


=head2 DescribeUserPoolClient(ClientId => Str, UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::DescribeUserPoolClient>

Returns: a L<Paws::CognitoIdp::DescribeUserPoolClientResponse> instance

  Client method for returning the configuration information and metadata
of the specified user pool client.


=head2 ForgotPassword(ClientId => Str, Username => Str, [SecretHash => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ForgotPassword>

Returns: a L<Paws::CognitoIdp::ForgotPasswordResponse> instance

  Retrieves the password for the specified client ID or username.


=head2 GetJWKS(UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::GetJWKS>

Returns: a L<Paws::CognitoIdp::GetJWKSResponse> instance

  Gets the JSON Web keys for the specified user pool.


=head2 GetOpenIdConfiguration(UserPoolId => Str)

Each argument is described in detail in: L<Paws::CognitoIdp::GetOpenIdConfiguration>

Returns: a L<Paws::CognitoIdp::GetOpenIdConfigurationResponse> instance

  Gets the OpenId configuration information for the specified user pool.


=head2 GetUser([AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::GetUser>

Returns: a L<Paws::CognitoIdp::GetUserResponse> instance

  Gets the user attributes and metadata for a user.


=head2 GetUserAttributeVerificationCode(AttributeName => Str, [AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::GetUserAttributeVerificationCode>

Returns: a L<Paws::CognitoIdp::GetUserAttributeVerificationCodeResponse> instance

  Gets the user attribute verification code for the specified attribute
name.


=head2 ListUserPoolClients(UserPoolId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserPoolClients>

Returns: a L<Paws::CognitoIdp::ListUserPoolClientsResponse> instance

  Lists the clients that have been created for the specified user pool.


=head2 ListUserPools(MaxResults => Int, [NextToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ListUserPools>

Returns: a L<Paws::CognitoIdp::ListUserPoolsResponse> instance

  Lists the user pools associated with an AWS account.


=head2 ListUsers(UserPoolId => Str, [AttributesToGet => ArrayRef[Str], Limit => Int, PaginationToken => Str, UserStatus => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ListUsers>

Returns: a L<Paws::CognitoIdp::ListUsersResponse> instance

  Lists the users in the Amazon Cognito user pool.


=head2 ResendConfirmationCode(ClientId => Str, Username => Str, [SecretHash => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::ResendConfirmationCode>

Returns: a L<Paws::CognitoIdp::ResendConfirmationCodeResponse> instance

  Resends the confirmation (for confirmation of registration) to a
specific user in the user pool.


=head2 SetUserSettings(AccessToken => Str, MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>])

Each argument is described in detail in: L<Paws::CognitoIdp::SetUserSettings>

Returns: a L<Paws::CognitoIdp::SetUserSettingsResponse> instance

  Sets the user settings like multi-factor authentication (MFA). If MFA
is to be removed for a particular attribute pass the attribute with
code delivery as null. If null list is passed, all MFA options are
removed.


=head2 SignUp(ClientId => Str, Password => Str, Username => Str, [SecretHash => Str, UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>], ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]])

Each argument is described in detail in: L<Paws::CognitoIdp::SignUp>

Returns: a L<Paws::CognitoIdp::SignUpResponse> instance

  Registers the user in the specified user pool and creates a user name,
password, and user attributes.


=head2 UpdateUserAttributes(UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>], [AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserAttributes>

Returns: a L<Paws::CognitoIdp::UpdateUserAttributesResponse> instance

  Allows a user to update a specific attribute (one at a time).


=head2 UpdateUserPool(UserPoolId => Str, [AutoVerifiedAttributes => ArrayRef[Str], EmailVerificationMessage => Str, EmailVerificationSubject => Str, LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>, MfaConfiguration => Str, Policies => L<Paws::CognitoIdp::UserPoolPolicyType>, SmsAuthenticationMessage => Str, SmsVerificationMessage => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPool>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolResponse> instance

  Updates the specified user pool with the specified attributes.


=head2 UpdateUserPoolClient(ClientId => Str, UserPoolId => Str, [ClientName => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::UpdateUserPoolClient>

Returns: a L<Paws::CognitoIdp::UpdateUserPoolClientResponse> instance

  Allows the developer to update the specified user pool client and
password policy.


=head2 VerifyUserAttribute(AttributeName => Str, Code => Str, [AccessToken => Str])

Each argument is described in detail in: L<Paws::CognitoIdp::VerifyUserAttribute>

Returns: a L<Paws::CognitoIdp::VerifyUserAttributeResponse> instance

  Verifies the specified user attributes in the user pool.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

