
package Paws::CognitoIdentity::SetPrincipalTagAttributeMap;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityProviderName => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalTags => (is => 'ro', isa => 'Paws::CognitoIdentity::PrincipalTags');
  has UseDefaults => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetPrincipalTagAttributeMap');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::SetPrincipalTagAttributeMapResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::SetPrincipalTagAttributeMap - Arguments for method SetPrincipalTagAttributeMap on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetPrincipalTagAttributeMap on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method SetPrincipalTagAttributeMap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetPrincipalTagAttributeMap.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $SetPrincipalTagAttributeMapResponse =
      $cognito -identity->SetPrincipalTagAttributeMap(
      IdentityPoolId       => 'MyIdentityPoolId',
      IdentityProviderName => 'MyIdentityProviderName',
      PrincipalTags        => {
        'MyPrincipalTagID' => 'MyPrincipalTagValue'
        ,    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      UseDefaults => 1,    # OPTIONAL
      );

    # Results:
    my $IdentityPoolId = $SetPrincipalTagAttributeMapResponse->IdentityPoolId;
    my $IdentityProviderName =
      $SetPrincipalTagAttributeMapResponse->IdentityProviderName;
    my $PrincipalTags = $SetPrincipalTagAttributeMapResponse->PrincipalTags;
    my $UseDefaults   = $SetPrincipalTagAttributeMapResponse->UseDefaults;

# Returns a L<Paws::CognitoIdentity::SetPrincipalTagAttributeMapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/SetPrincipalTagAttributeMap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityPoolId => Str

The ID of the Identity Pool you want to set attribute mappings for.



=head2 B<REQUIRED> IdentityProviderName => Str

The provider name you want to use for attribute mappings.



=head2 PrincipalTags => L<Paws::CognitoIdentity::PrincipalTags>

You can use this operation to add principal tags.



=head2 UseDefaults => Bool

You can use this operation to use default (username and clientID)
attribute mappings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetPrincipalTagAttributeMap in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

