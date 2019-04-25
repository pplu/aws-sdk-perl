
package Paws::CognitoIdp::SetUserPoolMfaConfig;
  use Moose;
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has SmsMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsMfaConfigType');
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetUserPoolMfaConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetUserPoolMfaConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUserPoolMfaConfig - Arguments for method SetUserPoolMfaConfig on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetUserPoolMfaConfig on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetUserPoolMfaConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetUserPoolMfaConfig.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetUserPoolMfaConfigResponse = $cognito -idp->SetUserPoolMfaConfig(
      UserPoolId          => 'MyUserPoolIdType',
      MfaConfiguration    => 'OFF',                # OPTIONAL
      SmsMfaConfiguration => {
        SmsAuthenticationMessage =>
          'MySmsVerificationMessageType',          # min: 6, max: 140; OPTIONAL
        SmsConfiguration => {
          SnsCallerArn => 'MyArnType',             # min: 20, max: 2048
          ExternalId   => 'MyStringType',          # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SoftwareTokenMfaConfiguration => {
        Enabled => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $MfaConfiguration = $SetUserPoolMfaConfigResponse->MfaConfiguration;
    my $SmsMfaConfiguration =
      $SetUserPoolMfaConfigResponse->SmsMfaConfiguration;
    my $SoftwareTokenMfaConfiguration =
      $SetUserPoolMfaConfigResponse->SoftwareTokenMfaConfiguration;

    # Returns a L<Paws::CognitoIdp::SetUserPoolMfaConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/SetUserPoolMfaConfig>

=head1 ATTRIBUTES


=head2 MfaConfiguration => Str

The MFA configuration.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">

=head2 SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>

The SMS text message MFA configuration.



=head2 SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>

The software token MFA configuration.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetUserPoolMfaConfig in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

