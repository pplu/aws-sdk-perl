
package Paws::Chime::UpdateProxySessionResponse;
  use Moose;
  has ProxySession => (is => 'ro', isa => 'Paws::Chime::ProxySession');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateProxySessionResponse

=head1 ATTRIBUTES


=head2 ProxySession => L<Paws::Chime::ProxySession>

The proxy session details.


=head2 _request_id => Str


=cut

