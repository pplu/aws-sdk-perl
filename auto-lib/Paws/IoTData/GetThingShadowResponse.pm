
package Paws::IoTData::GetThingShadowResponse;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::GetThingShadowResponse

=head1 ATTRIBUTES


=head2 Payload => Str

The state information, in JSON format.


=head2 _request_id => Str


=cut

