# Generated from json/callresult_class.tt

package Paws::CognitoIdp::GetUserPoolMfaConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_SoftwareTokenMfaConfigType CognitoIdp_SmsMfaConfigType/;
  has MfaConfiguration => (is => 'ro', isa => Str);
  has SmsMfaConfiguration => (is => 'ro', isa => CognitoIdp_SmsMfaConfigType);
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => CognitoIdp_SoftwareTokenMfaConfigType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MfaConfiguration' => {
                                       'type' => 'Str'
                                     },
               'SoftwareTokenMfaConfiguration' => {
                                                    'class' => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType',
                                                    'type' => 'CognitoIdp_SoftwareTokenMfaConfigType'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SmsMfaConfiguration' => {
                                          'class' => 'Paws::CognitoIdp::SmsMfaConfigType',
                                          'type' => 'CognitoIdp_SmsMfaConfigType'
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

The multi-factor (MFA) configuration.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">
=head2 SmsMfaConfiguration => CognitoIdp_SmsMfaConfigType

The SMS text message multi-factor (MFA) configuration.


=head2 SoftwareTokenMfaConfiguration => CognitoIdp_SoftwareTokenMfaConfigType

The software token multi-factor (MFA) configuration.


=head2 _request_id => Str


=cut

1;