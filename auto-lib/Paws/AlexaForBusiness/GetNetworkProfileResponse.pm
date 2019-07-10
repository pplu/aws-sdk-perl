
package Paws::AlexaForBusiness::GetNetworkProfileResponse;
  use Moose;
  has NetworkProfile => (is => 'ro', isa => 'Paws::AlexaForBusiness::NetworkProfile');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetNetworkProfileResponse

=head1 ATTRIBUTES


=head2 NetworkProfile => L<Paws::AlexaForBusiness::NetworkProfile>

The network profile associated with a device.


=head2 _request_id => Str


=cut

1;