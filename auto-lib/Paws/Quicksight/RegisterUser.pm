
package Paws::Quicksight::RegisterUser;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has CustomFederationProviderUrl => (is => 'ro', isa => 'Str');
  has CustomPermissionsName => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has ExternalLoginFederationProviderType => (is => 'ro', isa => 'Str');
  has ExternalLoginId => (is => 'ro', isa => 'Str');
  has IamArn => (is => 'ro', isa => 'Str');
  has IdentityType => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Namespace', required => 1);
  has SessionName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
  has UserRole => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::RegisterUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RegisterUser - Arguments for method RegisterUser on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterUser on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method RegisterUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterUser.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $RegisterUserResponse = $quicksight->RegisterUser(
      AwsAccountId                        => 'MyAwsAccountId',
      Email                               => 'MyString',
      IdentityType                        => 'IAM',
      Namespace                           => 'MyNamespace',
      UserRole                            => 'ADMIN',
      CustomFederationProviderUrl         => 'MyString',             # OPTIONAL
      CustomPermissionsName               => 'MyRoleName',           # OPTIONAL
      ExternalLoginFederationProviderType => 'MyString',             # OPTIONAL
      ExternalLoginId                     => 'MyString',             # OPTIONAL
      IamArn                              => 'MyString',             # OPTIONAL
      SessionName                         => 'MyRoleSessionName',    # OPTIONAL
      UserName                            => 'MyUserName',           # OPTIONAL
    );

    # Results:
    my $RequestId         = $RegisterUserResponse->RequestId;
    my $Status            = $RegisterUserResponse->Status;
    my $User              = $RegisterUserResponse->User;
    my $UserInvitationUrl = $RegisterUserResponse->UserInvitationUrl;

    # Returns a L<Paws::Quicksight::RegisterUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/RegisterUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that the user is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.



=head2 CustomFederationProviderUrl => Str

The URL of the custom OpenID Connect (OIDC) provider that provides
identity to let a user federate into QuickSight with an associated AWS
Identity and Access Management (IAM) role. This parameter should only
be used when C<ExternalLoginFederationProviderType> parameter is set to
C<CUSTOM_OIDC>.



=head2 CustomPermissionsName => Str

(Enterprise edition only) The name of the custom permissions profile
that you want to assign to this user. Customized permissions allows you
to control a user's access by restricting access the following
operations:

=over

=item *

Create and update data sources

=item *

Create and update datasets

=item *

Create and update email reports

=item *

Subscribe to email reports

=back

To add custom permissions to an existing user, use C< UpdateUser >
instead.

A set of custom permissions includes any combination of these
restrictions. Currently, you need to create the profile names for
custom permission sets by using the QuickSight console. Then, you use
the C<RegisterUser> API operation to assign the named set of
permissions to a QuickSight user.

QuickSight custom permissions are applied through IAM policies.
Therefore, they override the permissions typically granted by assigning
QuickSight users to one of the default security cohorts in QuickSight
(admin, author, reader).

This feature is available only to QuickSight Enterprise edition
subscriptions that use SAML 2.0-Based Federation for Single Sign-On
(SSO).



=head2 B<REQUIRED> Email => Str

The email address of the user that you want to register.



=head2 ExternalLoginFederationProviderType => Str

The type of supported external login provider that provides identity to
let a user federate into Amazon QuickSight with an associated AWS
Identity and Access Management (IAM) role. The type of supported
external login provider can be one of the following.

=over

=item *

C<COGNITO>: Amazon Cognito. The provider URL is
cognito-identity.amazonaws.com. When choosing the C<COGNITO> provider
type, donE<rsquo>t use the "CustomFederationProviderUrl" parameter
which is only needed when the external provider is custom.

=item *

C<CUSTOM_OIDC>: Custom OpenID Connect (OIDC) provider. When choosing
C<CUSTOM_OIDC> type, use the C<CustomFederationProviderUrl> parameter
to provide the custom OIDC provider URL.

=back




=head2 ExternalLoginId => Str

The identity ID for a user in the external login provider.



=head2 IamArn => Str

The ARN of the IAM user or role that you are registering with Amazon
QuickSight.



=head2 B<REQUIRED> IdentityType => Str

Amazon QuickSight supports several ways of managing the identity of
users. This parameter accepts two values:

=over

=item *

C<IAM>: A user whose identity maps to an existing IAM user or role.

=item *

C<QUICKSIGHT>: A user whose identity is owned and managed internally by
Amazon QuickSight.

=back


Valid values are: C<"IAM">, C<"QUICKSIGHT">

=head2 B<REQUIRED> Namespace => Str

The namespace. Currently, you should set this to C<default>.



=head2 SessionName => Str

You need to use this parameter only when you register one or more users
using an assumed IAM role. You don't need to provide the session name
for other scenarios, for example when you are registering an IAM user
or an Amazon QuickSight user. You can register multiple users using the
same IAM role if each user has a different session name. For more
information on assuming IAM roles, see C<assume-role>
(https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html)
in the I<AWS CLI Reference.>



=head2 UserName => Str

The Amazon QuickSight user name that you want to create for the user
you are registering.



=head2 B<REQUIRED> UserRole => Str

The Amazon QuickSight role for the user. The user role can be one of
the following:

=over

=item *

C<READER>: A user who has read-only access to dashboards.

=item *

C<AUTHOR>: A user who can create data sources, datasets, analyses, and
dashboards.

=item *

C<ADMIN>: A user who is an author, who can also manage Amazon
QuickSight settings.

=item *

C<RESTRICTED_READER>: This role isn't currently available for use.

=item *

C<RESTRICTED_AUTHOR>: This role isn't currently available for use.

=back


Valid values are: C<"ADMIN">, C<"AUTHOR">, C<"READER">, C<"RESTRICTED_AUTHOR">, C<"RESTRICTED_READER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterUser in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

