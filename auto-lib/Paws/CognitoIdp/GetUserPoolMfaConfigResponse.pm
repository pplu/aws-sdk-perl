
package Paws::CognitoIdp::GetUserPoolMfaConfigResponse;
  use Moose;
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has SmsMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsMfaConfigType');
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserPoolMfaConfigResponse

=head1 ATTRIBUTES


=head2 MfaConfiguration => Str

The multi-factor (MFA) configuration.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">
=head2 SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>

The SMS text message multi-factor (MFA) configuration.


=head2 SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>

The software token multi-factor (MFA) configuration.


=head2 _request_id => Str


=cut

1;