# Generated from json/callargs_class.tt

package Paws::CognitoIdp::ConfirmForgotPassword;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserContextDataType CognitoIdp_AnalyticsMetadataType/;
  has AnalyticsMetadata => (is => 'ro', isa => CognitoIdp_AnalyticsMetadataType, predicate => 1);
  has ClientId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ConfirmationCode => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Password => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SecretHash => (is => 'ro', isa => Str, predicate => 1);
  has UserContextData => (is => 'ro', isa => CognitoIdp_UserContextDataType, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ConfirmForgotPassword');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::ConfirmForgotPasswordResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Password' => {
                               'type' => 'Str'
                             },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'ConfirmationCode' => {
                                       'type' => 'Str'
                                     },
               'Username' => {
                               'type' => 'Str'
                             },
               'SecretHash' => {
                                 'type' => 'Str'
                               },
               'AnalyticsMetadata' => {
                                        'class' => 'Paws::CognitoIdp::AnalyticsMetadataType',
                                        'type' => 'CognitoIdp_AnalyticsMetadataType'
                                      },
               'UserContextData' => {
                                      'class' => 'Paws::CognitoIdp::UserContextDataType',
                                      'type' => 'CognitoIdp_UserContextDataType'
                                    }
             },
  'IsRequired' => {
                    'Password' => 1,
                    'ClientId' => 1,
                    'ConfirmationCode' => 1,
                    'Username' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmForgotPassword - Arguments for method ConfirmForgotPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmForgotPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ConfirmForgotPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmForgotPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ConfirmForgotPasswordResponse = $cognito -idp->ConfirmForgotPassword(
      ClientId          => 'MyClientIdType',
      ConfirmationCode  => 'MyConfirmationCodeType',
      Password          => 'MyPasswordType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      SecretHash      => 'MySecretHashType',    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',          # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ConfirmForgotPassword>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => CognitoIdp_AnalyticsMetadataType

The Amazon Pinpoint analytics metadata for collecting metrics for
C<ConfirmForgotPassword> calls.



=head2 B<REQUIRED> ClientId => Str

The app client ID of the app associated with the user pool.



=head2 B<REQUIRED> ConfirmationCode => Str

The confirmation code sent by a user's request to retrieve a forgotten
password. For more information, see



=head2 B<REQUIRED> Password => Str

The password sent by a user's request to retrieve a forgotten password.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 UserContextData => CognitoIdp_UserContextDataType

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 B<REQUIRED> Username => Str

The user name of the user for whom you want to enter a code to retrieve
a forgotten password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmForgotPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

