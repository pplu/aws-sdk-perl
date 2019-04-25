
package Paws::CognitoIdentity::DescribeIdentityPool;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::IdentityPool');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::DescribeIdentityPool - Arguments for method DescribeIdentityPool on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIdentityPool on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method DescribeIdentityPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIdentityPool.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $IdentityPool = $cognito -identity->DescribeIdentityPool(
      IdentityPoolId => 'MyIdentityPoolId',

    );

    # Results:
    my $AllowUnauthenticatedIdentities =
      $IdentityPool->AllowUnauthenticatedIdentities;
    my $CognitoIdentityProviders  = $IdentityPool->CognitoIdentityProviders;
    my $DeveloperProviderName     = $IdentityPool->DeveloperProviderName;
    my $IdentityPoolId            = $IdentityPool->IdentityPoolId;
    my $IdentityPoolName          = $IdentityPool->IdentityPoolName;
    my $OpenIdConnectProviderARNs = $IdentityPool->OpenIdConnectProviderARNs;
    my $SamlProviderARNs          = $IdentityPool->SamlProviderARNs;
    my $SupportedLoginProviders   = $IdentityPool->SupportedLoginProviders;

    # Returns a L<Paws::CognitoIdentity::IdentityPool> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/DescribeIdentityPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIdentityPool in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

