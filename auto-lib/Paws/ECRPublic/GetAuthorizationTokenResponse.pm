
package Paws::ECRPublic::GetAuthorizationTokenResponse;
  use Moose;
  has AuthorizationData => (is => 'ro', isa => 'Paws::ECRPublic::AuthorizationData', traits => ['NameInRequest'], request_name => 'authorizationData' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::GetAuthorizationTokenResponse

=head1 ATTRIBUTES


=head2 AuthorizationData => L<Paws::ECRPublic::AuthorizationData>

An authorization token data object that corresponds to a public
registry.


=head2 _request_id => Str


=cut

1;