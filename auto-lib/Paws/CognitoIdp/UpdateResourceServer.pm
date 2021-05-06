
package Paws::CognitoIdp::UpdateResourceServer;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scopes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ResourceServerScopeType]');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateResourceServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateResourceServer - Arguments for method UpdateResourceServer on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceServer on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateResourceServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceServer.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateResourceServerResponse = $cognito -idp->UpdateResourceServer(
      Identifier => 'MyResourceServerIdentifierType',
      Name       => 'MyResourceServerNameType',
      UserPoolId => 'MyUserPoolIdType',
      Scopes     => [
        {
          ScopeDescription =>
            'MyResourceServerScopeDescriptionType',    # min: 1, max: 256
          ScopeName => 'MyResourceServerScopeNameType',    # min: 1, max: 256

        },
        ...
      ],                                                   # OPTIONAL
    );

    # Results:
    my $ResourceServer = $UpdateResourceServerResponse->ResourceServer;

    # Returns a L<Paws::CognitoIdp::UpdateResourceServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateResourceServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The identifier for the resource server.



=head2 B<REQUIRED> Name => Str

The name of the resource server.



=head2 Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]

The scope values to be set for the resource server.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceServer in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

