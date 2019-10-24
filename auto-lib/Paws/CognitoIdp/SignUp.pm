# Generated from json/callargs_class.tt

package Paws::CognitoIdp::SignUp;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserContextDataType CognitoIdp_AttributeType CognitoIdp_AnalyticsMetadataType/;
  has AnalyticsMetadata => (is => 'ro', isa => CognitoIdp_AnalyticsMetadataType, predicate => 1);
  has ClientId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Password => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SecretHash => (is => 'ro', isa => Str, predicate => 1);
  has UserAttributes => (is => 'ro', isa => ArrayRef[CognitoIdp_AttributeType], predicate => 1);
  has UserContextData => (is => 'ro', isa => CognitoIdp_UserContextDataType, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ValidationData => (is => 'ro', isa => ArrayRef[CognitoIdp_AttributeType], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SignUp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::SignUpResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecretHash' => {
                                 'type' => 'Str'
                               },
               'AnalyticsMetadata' => {
                                        'class' => 'Paws::CognitoIdp::AnalyticsMetadataType',
                                        'type' => 'CognitoIdp_AnalyticsMetadataType'
                                      },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'Password' => {
                               'type' => 'Str'
                             },
               'UserAttributes' => {
                                     'class' => 'Paws::CognitoIdp::AttributeType',
                                     'type' => 'ArrayRef[CognitoIdp_AttributeType]'
                                   },
               'Username' => {
                               'type' => 'Str'
                             },
               'UserContextData' => {
                                      'class' => 'Paws::CognitoIdp::UserContextDataType',
                                      'type' => 'CognitoIdp_UserContextDataType'
                                    },
               'ValidationData' => {
                                     'class' => 'Paws::CognitoIdp::AttributeType',
                                     'type' => 'ArrayRef[CognitoIdp_AttributeType]'
                                   }
             },
  'IsRequired' => {
                    'Password' => 1,
                    'ClientId' => 1,
                    'Username' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SignUp - Arguments for method SignUp on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SignUp on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SignUp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SignUp.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SignUpResponse = $cognito -idp->SignUp(
      ClientId          => 'MyClientIdType',
      Password          => 'MyPasswordType',
      Username          => 'MyUsernameType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # OPTIONAL
      },    # OPTIONAL
      SecretHash     => 'MySecretHashType',    # OPTIONAL
      UserAttributes => [
        {
          Name  => 'MyAttributeNameType',      # min: 1, max: 32
          Value => 'MyAttributeValueType',     # max: 2048; OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',         # OPTIONAL
      },    # OPTIONAL
      ValidationData => [
        {
          Name  => 'MyAttributeNameType',     # min: 1, max: 32
          Value => 'MyAttributeValueType',    # max: 2048; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $CodeDeliveryDetails = $SignUpResponse->CodeDeliveryDetails;
    my $UserConfirmed       = $SignUpResponse->UserConfirmed;
    my $UserSub             = $SignUpResponse->UserSub;

    # Returns a L<Paws::CognitoIdp::SignUpResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/SignUp>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => CognitoIdp_AnalyticsMetadataType

The Amazon Pinpoint analytics metadata for collecting metrics for
C<SignUp> calls.



=head2 B<REQUIRED> ClientId => Str

The ID of the client associated with the user pool.



=head2 B<REQUIRED> Password => Str

The password of the user you wish to register.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 UserAttributes => ArrayRef[CognitoIdp_AttributeType]

An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.



=head2 UserContextData => CognitoIdp_UserContextDataType

Contextual data such as the user's device fingerprint, IP address, or
location used for evaluating the risk of an unexpected event by Amazon
Cognito advanced security.



=head2 B<REQUIRED> Username => Str

The user name of the user you wish to register.



=head2 ValidationData => ArrayRef[CognitoIdp_AttributeType]

The validation data in the request to register a user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SignUp in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

