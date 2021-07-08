
package Paws::CognitoIdp::RevokeToken;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientSecret => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::RevokeTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RevokeToken - Arguments for method RevokeToken on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeToken on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method RevokeToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeToken.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $RevokeTokenResponse = $cognito -idp->RevokeToken(
      ClientId     => 'MyClientIdType',
      Token        => 'MyTokenModelType',
      ClientSecret => 'MyClientSecretType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/RevokeToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The client ID for the token that you want to revoke.



=head2 ClientSecret => Str

The secret for the client ID. This is required only if the client ID
has a secret.



=head2 B<REQUIRED> Token => Str

The token that you want to revoke.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeToken in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

