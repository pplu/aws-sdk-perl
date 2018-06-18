
package Paws::CognitoIdentity::GetCredentialsForIdentity;
  use Moose;
  has CustomRoleArn => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Paws::CognitoIdentity::LoginsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCredentialsForIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::GetCredentialsForIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetCredentialsForIdentity - Arguments for method GetCredentialsForIdentity on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCredentialsForIdentity on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method GetCredentialsForIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCredentialsForIdentity.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $GetCredentialsForIdentityResponse =
      $cognito -identity->GetCredentialsForIdentity(
      IdentityId    => 'MyIdentityId',
      CustomRoleArn => 'MyARNString',    # OPTIONAL
      Logins        => {
        'MyIdentityProviderName' => 'MyIdentityProviderToken'
        ,    # key: min: 1, max: 128, value: min: 1, max: 50000
      },    # OPTIONAL
      );

    # Results:
    my $Credentials = $GetCredentialsForIdentityResponse->Credentials;
    my $IdentityId  = $GetCredentialsForIdentityResponse->IdentityId;

 # Returns a L<Paws::CognitoIdentity::GetCredentialsForIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/GetCredentialsForIdentity>

=head1 ATTRIBUTES


=head2 CustomRoleArn => Str

The Amazon Resource Name (ARN) of the role to be assumed when multiple
roles were received in the token from the identity provider. For
example, a SAML-based identity provider. This parameter is optional for
identity providers that do not support role customization.



=head2 B<REQUIRED> IdentityId => Str

A unique identifier in the format REGION:GUID.



=head2 Logins => L<Paws::CognitoIdentity::LoginsMap>

A set of optional name-value pairs that map provider names to provider
tokens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCredentialsForIdentity in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

