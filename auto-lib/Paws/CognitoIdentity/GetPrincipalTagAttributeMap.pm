
package Paws::CognitoIdentity::GetPrincipalTagAttributeMap;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityProviderName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPrincipalTagAttributeMap');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::GetPrincipalTagAttributeMapResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetPrincipalTagAttributeMap - Arguments for method GetPrincipalTagAttributeMap on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPrincipalTagAttributeMap on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method GetPrincipalTagAttributeMap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPrincipalTagAttributeMap.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $GetPrincipalTagAttributeMapResponse =
      $cognito -identity->GetPrincipalTagAttributeMap(
      IdentityPoolId       => 'MyIdentityPoolId',
      IdentityProviderName => 'MyIdentityProviderName',

      );

    # Results:
    my $IdentityPoolId = $GetPrincipalTagAttributeMapResponse->IdentityPoolId;
    my $IdentityProviderName =
      $GetPrincipalTagAttributeMapResponse->IdentityProviderName;
    my $PrincipalTags = $GetPrincipalTagAttributeMapResponse->PrincipalTags;
    my $UseDefaults   = $GetPrincipalTagAttributeMapResponse->UseDefaults;

# Returns a L<Paws::CognitoIdentity::GetPrincipalTagAttributeMapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/GetPrincipalTagAttributeMap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityPoolId => Str

You can use this operation to get the ID of the Identity Pool you setup
attribute mappings for.



=head2 B<REQUIRED> IdentityProviderName => Str

You can use this operation to get the provider name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPrincipalTagAttributeMap in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

