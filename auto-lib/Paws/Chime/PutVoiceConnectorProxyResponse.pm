
package Paws::Chime::PutVoiceConnectorProxyResponse;
  use Moose;
  has Proxy => (is => 'ro', isa => 'Paws::Chime::Proxy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorProxyResponse

=head1 ATTRIBUTES


=head2 Proxy => L<Paws::Chime::Proxy>

The proxy configuration details.


=head2 _request_id => Str


=cut

