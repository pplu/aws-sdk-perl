# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminConfirmSignUp;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ClientMetadataType/;
  has ClientMetadata => (is => 'ro', isa => CognitoIdp_ClientMetadataType, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminConfirmSignUp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminConfirmSignUpResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Username' => {
                               'type' => 'Str'
                             },
               'ClientMetadata' => {
                                     'type' => 'CognitoIdp_ClientMetadataType',
                                     'class' => 'Paws::CognitoIdp::ClientMetadataType'
                                   },
               'UserPoolId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'Username' => 1,
                    'UserPoolId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminConfirmSignUp - Arguments for method AdminConfirmSignUp on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminConfirmSignUp on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminConfirmSignUp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminConfirmSignUp.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminConfirmSignUpResponse = $cognito -idp->AdminConfirmSignUp(
      UserPoolId     => 'MyUserPoolIdType',
      Username       => 'MyUsernameType',
      ClientMetadata => { 'MyStringType' => 'MyStringType', },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminConfirmSignUp>

=head1 ATTRIBUTES


=head2 ClientMetadata => CognitoIdp_ClientMetadataType

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

If your user pool configuration includes triggers, the
AdminConfirmSignUp API action invokes the AWS Lambda function that is
specified for the I<post confirmation> trigger. When Amazon Cognito
invokes this function, it passes a JSON payload, which the function
receives as input. In this payload, the C<clientMetadata> attribute
provides the data that you assigned to the ClientMetadata parameter in
your AdminConfirmSignUp request. In your function code in AWS Lambda,
you can process the ClientMetadata value to enhance your workflow for
your specific needs.

For more information, see Customizing User Pool Workflows with Lambda
Triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html)
in the I<Amazon Cognito Developer Guide>.

Take the following limitations into consideration when you use the
ClientMetadata parameter:

=over

=item *

Amazon Cognito does not store the ClientMetadata value. This data is
available only to AWS Lambda triggers that are assigned to a user pool
to support custom workflows. If your user pool configuration does not
include triggers, the ClientMetadata parameter serves no purpose.

=item *

Amazon Cognito does not validate the ClientMetadata value.

=item *

Amazon Cognito does not encrypt the the ClientMetadata value, so don't
use it to provide sensitive information.

=back




=head2 B<REQUIRED> Username => Str

The user name for which you want to confirm user registration.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for which you want to confirm user registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminConfirmSignUp in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

