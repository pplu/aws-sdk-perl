
package Paws::Chime::ListProxySessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProxySessions => (is => 'ro', isa => 'ArrayRef[Paws::Chime::ProxySession]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListProxySessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 ProxySessions => ArrayRef[L<Paws::Chime::ProxySession>]

The proxy session details.


=head2 _request_id => Str


=cut

