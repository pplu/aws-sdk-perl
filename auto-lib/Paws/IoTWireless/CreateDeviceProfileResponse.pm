
package Paws::IoTWireless::CreateDeviceProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateDeviceProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the new resource.


=head2 Id => Str

The ID of the new device profile.


=head2 _request_id => Str


=cut

