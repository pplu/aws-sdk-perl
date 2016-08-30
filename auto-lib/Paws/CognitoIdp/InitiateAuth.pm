
package Paws::CognitoIdp::InitiateAuth;
  use Moose;
  has AuthFlow => (is => 'ro', isa => 'Str', required => 1);
  has AuthParameters => (is => 'ro', isa => 'Paws::CognitoIdp::AuthParametersType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateAuth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::InitiateAuthResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::InitiateAuth - Arguments for method InitiateAuth on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateAuth on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method InitiateAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateAuth.

As an example:

  $service_obj->InitiateAuth(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthFlow => Str

The authentication flow.

Valid values are: C<"USER_SRP_AUTH">, C<"REFRESH_TOKEN_AUTH">, C<"CUSTOM_AUTH">, C<"ADMIN_NO_SRP_AUTH">

=head2 AuthParameters => L<Paws::CognitoIdp::AuthParametersType>

The authentication parameters.



=head2 B<REQUIRED> ClientId => Str

The client ID.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

The client app's metadata.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateAuth in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

