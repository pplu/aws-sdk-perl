
package Paws::AlexaForBusiness::GetDeviceResponse;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::AlexaForBusiness::Device');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetDeviceResponse

=head1 ATTRIBUTES


=head2 Device => L<Paws::AlexaForBusiness::Device>

The details of the device requested. Required.


=head2 _request_id => Str


=cut

1;