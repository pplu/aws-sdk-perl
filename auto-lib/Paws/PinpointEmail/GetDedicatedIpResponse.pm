
package Paws::PinpointEmail::GetDedicatedIpResponse;
  use Moose;
  has DedicatedIp => (is => 'ro', isa => 'Paws::PinpointEmail::DedicatedIp');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDedicatedIpResponse

=head1 ATTRIBUTES


=head2 DedicatedIp => L<Paws::PinpointEmail::DedicatedIp>

An object that contains information about a dedicated IP address.


=head2 _request_id => Str


=cut

