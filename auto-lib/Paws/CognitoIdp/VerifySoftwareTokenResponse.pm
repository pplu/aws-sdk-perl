
package Paws::CognitoIdp::VerifySoftwareTokenResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::VerifySoftwareTokenResponse

=head1 ATTRIBUTES


=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service.


=head2 Status => Str

The status of the verify software token.

Valid values are: C<"SUCCESS">, C<"ERROR">
=head2 _request_id => Str


=cut

1;