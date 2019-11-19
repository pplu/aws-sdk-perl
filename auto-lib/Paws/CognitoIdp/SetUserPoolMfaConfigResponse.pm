# Generated from json/callresult_class.tt

package Paws::CognitoIdp::SetUserPoolMfaConfigResponse;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MfaConfiguration' => {
                                       'type' => 'Str'
                                     },
               'SoftwareTokenMfaConfiguration' => {
                                                    'class' => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType',
                                                    'type' => 'CognitoIdp_SoftwareTokenMfaConfigType'
                                                  },
               'SmsMfaConfiguration' => {
                                          'type' => 'CognitoIdp_SmsMfaConfigType',
                                          'class' => 'Paws::CognitoIdp::SmsMfaConfigType'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUserPoolMfaConfigResponse

=head1 ATTRIBUTES


=head2 MfaConfiguration => Str

The MFA configuration. Valid values include:

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

The SMS text message MFA configuration.


=head2 SoftwareTokenMfaConfiguration => CognitoIdp_SoftwareTokenMfaConfigType

The software token MFA configuration.


=head2 _request_id => Str


=cut

1;