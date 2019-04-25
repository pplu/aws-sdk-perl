
package Paws::CognitoIdp::SetUserMFAPreference;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has SMSMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::SMSMfaSettingsType');
  has SoftwareTokenMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaSettingsType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetUserMFAPreference');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetUserMFAPreferenceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUserMFAPreference - Arguments for method SetUserMFAPreference on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetUserMFAPreference on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetUserMFAPreference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetUserMFAPreference.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetUserMFAPreferenceResponse = $cognito -idp->SetUserMFAPreference(
      AccessToken    => 'MyTokenModelType',
      SMSMfaSettings => {
        Enabled      => 1,    # OPTIONAL
        PreferredMfa => 1,    # OPTIONAL
      },    # OPTIONAL
      SoftwareTokenMfaSettings => {
        Enabled      => 1,    # OPTIONAL
        PreferredMfa => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/SetUserMFAPreference>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token.



=head2 SMSMfaSettings => L<Paws::CognitoIdp::SMSMfaSettingsType>

The SMS text message multi-factor authentication (MFA) settings.



=head2 SoftwareTokenMfaSettings => L<Paws::CognitoIdp::SoftwareTokenMfaSettingsType>

The time-based one-time password software token MFA settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetUserMFAPreference in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

