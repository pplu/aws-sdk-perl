
package Paws::ECR::GetAuthorizationTokenResponse;
  use Moose;
  has AuthorizationData => (is => 'ro', isa => 'ArrayRef[Paws::ECR::AuthorizationData]', traits => ['NameInRequest'], request_name => 'authorizationData' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetAuthorizationTokenResponse

=head1 ATTRIBUTES


=head2 AuthorizationData => ArrayRef[L<Paws::ECR::AuthorizationData>]

A list of authorization token data objects that correspond to the
C<registryIds> values in the request.


=head2 _request_id => Str


=cut

1;