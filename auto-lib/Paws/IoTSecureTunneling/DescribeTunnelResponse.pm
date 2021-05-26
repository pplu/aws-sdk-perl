
package Paws::IoTSecureTunneling::DescribeTunnelResponse;
  use Moose;
  has Tunnel => (is => 'ro', isa => 'Paws::IoTSecureTunneling::Tunnel', traits => ['NameInRequest'], request_name => 'tunnel' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::DescribeTunnelResponse

=head1 ATTRIBUTES


=head2 Tunnel => L<Paws::IoTSecureTunneling::Tunnel>

The tunnel being described.


=head2 _request_id => Str


=cut

1;