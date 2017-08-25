
package Paws::CognitoIdp::CreateResourceServer;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scopes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ResourceServerScopeType]');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateResourceServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateResourceServer - Arguments for method CreateResourceServer on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceServer on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method CreateResourceServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceServer.

As an example:

  $service_obj->CreateResourceServer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A unique resource server identifier for the resource server. This could
be an HTTPS endpoint where the resource server is located. For example,
C<https://my-weather-api.example.com>.



=head2 B<REQUIRED> Name => Str

A friendly name for the resource server.



=head2 Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]

A list of scopes. Each scope is map, where the keys are C<name> and
C<description>.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceServer in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

