
package Paws::SSO::GetRoleCredentials;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sso_bearer_token', required => 1);
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'account_id', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'role_name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRoleCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/federation/credentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSO::GetRoleCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::GetRoleCredentials - Arguments for method GetRoleCredentials on L<Paws::SSO>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRoleCredentials on the
L<AWS Single Sign-On|Paws::SSO> service. Use the attributes of this class
as arguments to method GetRoleCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRoleCredentials.

=head1 SYNOPSIS

    my $portal.sso = Paws->service('SSO');
    my $GetRoleCredentialsResponse = $portal . sso->GetRoleCredentials(
      AccessToken => 'MyAccessTokenType',
      AccountId   => 'MyAccountIdType',
      RoleName    => 'MyRoleNameType',

    );

    # Results:
    my $RoleCredentials = $GetRoleCredentialsResponse->RoleCredentials;

    # Returns a L<Paws::SSO::GetRoleCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/portal.sso/GetRoleCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The token issued by the C<CreateToken> API call. For more information,
see CreateToken
(https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html)
in the I<AWS SSO OIDC API Reference Guide>.



=head2 B<REQUIRED> AccountId => Str

The identifier for the AWS account that is assigned to the user.



=head2 B<REQUIRED> RoleName => Str

The friendly name of the role that is assigned to the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRoleCredentials in L<Paws::SSO>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

