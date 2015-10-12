
package Paws::IoTData::DeleteThingShadowResponse;
  use Moose;
  has payload => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::DeleteThingShadowResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> payload => Str

  The state information, in JSON format.


=cut

