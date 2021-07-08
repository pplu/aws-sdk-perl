
package Paws::CodeArtifact::GetAuthorizationTokenResult;
  use Moose;
  has AuthorizationToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationToken');
  has Expiration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetAuthorizationTokenResult

=head1 ATTRIBUTES


=head2 AuthorizationToken => Str

The returned authentication token.


=head2 Expiration => Str

A timestamp that specifies the date and time the authorization token
expires.


=head2 _request_id => Str


=cut

