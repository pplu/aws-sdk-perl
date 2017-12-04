
package Paws::CognitoIdp::SetUserPoolMfaConfigResponse;
  use Moose;
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has SmsMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsMfaConfigType');
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUserPoolMfaConfigResponse

=head1 ATTRIBUTES


=head2 MfaConfiguration => Str

The MFA configuration.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">
=head2 SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>

The SMS text message MFA configuration.


=head2 SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>

The software token MFA configuration.


=head2 _request_id => Str


=cut

1;