
package Paws::Connect::GetFederationTokenResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::Connect::Credentials');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetFederationTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::Connect::Credentials>

The credentials to use for federation.


=head2 _request_id => Str


=cut

