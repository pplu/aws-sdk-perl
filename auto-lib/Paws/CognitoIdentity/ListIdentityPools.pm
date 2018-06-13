
package Paws::CognitoIdentity::ListIdentityPools;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentityPools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::ListIdentityPoolsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::ListIdentityPools - Arguments for method ListIdentityPools on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdentityPools on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method ListIdentityPools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdentityPools.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $ListIdentityPoolsResponse = $cognito -identity->ListIdentityPools(
      MaxResults => 1,
      NextToken  => 'MyPaginationKey',    # OPTIONAL
    );

    # Results:
    my $IdentityPools = $ListIdentityPoolsResponse->IdentityPools;
    my $NextToken     = $ListIdentityPoolsResponse->NextToken;

    # Returns a L<Paws::CognitoIdentity::ListIdentityPoolsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/ListIdentityPools>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of identities to return.



=head2 NextToken => Str

A pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdentityPools in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

