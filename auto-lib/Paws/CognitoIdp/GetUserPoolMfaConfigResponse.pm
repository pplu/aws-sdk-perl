# Generated from json/callresult_class.tt

package Paws::CognitoIdp::GetUserPoolMfaConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_SmsMfaConfigType CognitoIdp_SoftwareTokenMfaConfigType/;
  has MfaConfiguration => (is => 'ro', isa => Str);
  has SmsMfaConfiguration => (is => 'ro', isa => CognitoIdp_SmsMfaConfigType);
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => CognitoIdp_SoftwareTokenMfaConfigType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SmsMfaConfiguration' => {
                                          'type' => 'CognitoIdp_SmsMfaConfigType',
                                          'class' => 'Paws::CognitoIdp::SmsMfaConfigType'
                                        },
               'SoftwareTokenMfaConfiguration' => {
                                                    'class' => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType',
                                                    'type' => 'CognitoIdp_SoftwareTokenMfaConfigType'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MfaConfiguration' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserPoolMfaConfigResponse

=head1 ATTRIBUTES


=head2 MfaConfiguration => Str

The multi-factor (MFA) configuration. Valid values include:

=over

=item *

C<OFF> MFA will not be used for any users.

=item *

C<ON> MFA is required for all users to sign in.

=item *

C<OPTIONAL> MFA will be required only for individual users who have an
MFA factor enabled.

=back


Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">
=head2 SmsMfaConfiguration => CognitoIdp_SmsMfaConfigType

The SMS text message multi-factor (MFA) configuration.


=head2 SoftwareTokenMfaConfiguration => CognitoIdp_SoftwareTokenMfaConfigType

The software token multi-factor (MFA) configuration.


=head2 _request_id => Str


=cut

1;