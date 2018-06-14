
package Paws::CognitoIdp::AssociateSoftwareToken;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str');
  has Session => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateSoftwareToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AssociateSoftwareTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AssociateSoftwareToken - Arguments for method AssociateSoftwareToken on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateSoftwareToken on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AssociateSoftwareToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateSoftwareToken.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AssociateSoftwareTokenResponse = $cognito -idp->AssociateSoftwareToken(
      AccessToken => 'MyTokenModelType',    # OPTIONAL
      Session     => 'MySessionType',       # OPTIONAL
    );

    # Results:
    my $SecretCode = $AssociateSoftwareTokenResponse->SecretCode;
    my $Session    = $AssociateSoftwareTokenResponse->Session;

    # Returns a L<Paws::CognitoIdp::AssociateSoftwareTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AssociateSoftwareToken>

=head1 ATTRIBUTES


=head2 AccessToken => Str

The access token.



=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. This allows authentication of the user as part of
the MFA setup process.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateSoftwareToken in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

