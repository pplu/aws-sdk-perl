
package Paws::CognitoIdp::AdminInitiateAuth;
  use Moose;
  has AuthFlow => (is => 'ro', isa => 'Str', required => 1);
  has AuthParameters => (is => 'ro', isa => 'Paws::CognitoIdp::AuthParametersType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminInitiateAuth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminInitiateAuthResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminInitiateAuth - Arguments for method AdminInitiateAuth on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminInitiateAuth on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method AdminInitiateAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminInitiateAuth.

As an example:

  $service_obj->AdminInitiateAuth(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthFlow => Str

The authentication flow.

Valid values are: C<"USER_SRP_AUTH">, C<"REFRESH_TOKEN_AUTH">, C<"REFRESH_TOKEN">, C<"CUSTOM_AUTH">, C<"ADMIN_NO_SRP_AUTH">

=head2 AuthParameters => L<Paws::CognitoIdp::AuthParametersType>

The authentication parameters.



=head2 B<REQUIRED> ClientId => Str

The client app ID.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

The client app metadata.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the Amazon Cognito user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminInitiateAuth in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

