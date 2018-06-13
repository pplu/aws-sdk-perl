
package Paws::CognitoIdp::ForgotPassword;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has SecretHash => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ForgotPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ForgotPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ForgotPassword - Arguments for method ForgotPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ForgotPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ForgotPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ForgotPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ForgotPasswordResponse = $cognito -idp->ForgotPassword(
      ClientId          => 'MyClientIdType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      SecretHash      => 'MySecretHashType',    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',          # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CodeDeliveryDetails = $ForgotPasswordResponse->CodeDeliveryDetails;

    # Returns a L<Paws::CognitoIdp::ForgotPasswordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ForgotPassword>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

The Amazon Pinpoint analytics metadata for collecting metrics for
C<ForgotPassword> calls.



=head2 B<REQUIRED> ClientId => Str

The ID of the client associated with the user pool.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 B<REQUIRED> Username => Str

The user name of the user for whom you want to enter a code to reset a
forgotten password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ForgotPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

