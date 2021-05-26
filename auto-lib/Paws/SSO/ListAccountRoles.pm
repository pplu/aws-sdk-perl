
package Paws::SSO::ListAccountRoles;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sso_bearer_token', required => 1);
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'account_id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_result');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next_token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountRoles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assignment/roles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSO::ListAccountRolesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::ListAccountRoles - Arguments for method ListAccountRoles on L<Paws::SSO>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccountRoles on the
L<AWS Single Sign-On|Paws::SSO> service. Use the attributes of this class
as arguments to method ListAccountRoles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccountRoles.

=head1 SYNOPSIS

    my $portal.sso = Paws->service('SSO');
    my $ListAccountRolesResponse = $portal . sso->ListAccountRoles(
      AccessToken => 'MyAccessTokenType',
      AccountId   => 'MyAccountIdType',
      MaxResults  => 1,                     # OPTIONAL
      NextToken   => 'MyNextTokenType',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListAccountRolesResponse->NextToken;
    my $RoleList  = $ListAccountRolesResponse->RoleList;

    # Returns a L<Paws::SSO::ListAccountRolesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/portal.sso/ListAccountRoles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The token issued by the C<CreateToken> API call. For more information,
see CreateToken
(https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html)
in the I<AWS SSO OIDC API Reference Guide>.



=head2 B<REQUIRED> AccountId => Str

The identifier for the AWS account that is assigned to the user.



=head2 MaxResults => Int

The number of items that clients can request per page.



=head2 NextToken => Str

The page token from the previous response output when you request
subsequent pages.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccountRoles in L<Paws::SSO>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

