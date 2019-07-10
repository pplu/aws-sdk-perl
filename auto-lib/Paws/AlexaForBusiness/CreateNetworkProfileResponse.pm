
package Paws::AlexaForBusiness::CreateNetworkProfileResponse;
  use Moose;
  has NetworkProfileArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateNetworkProfileResponse

=head1 ATTRIBUTES


=head2 NetworkProfileArn => Str

The ARN of the network profile associated with a device.


=head2 _request_id => Str


=cut

1;