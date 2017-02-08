
package Paws::IoTData::DeleteThingShadowResponse;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'payload', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::DeleteThingShadowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => Str

The state information, in JSON format.


=head2 _request_id => Str


=cut

