
package Paws::SagemakerEdge::GetDeviceRegistrationResult;
  use Moose;
  has CacheTTL => (is => 'ro', isa => 'Str');
  has DeviceRegistration => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SagemakerEdge::GetDeviceRegistrationResult

=head1 ATTRIBUTES


=head2 CacheTTL => Str

The amount of time, in seconds, that the registration status is stored
on the deviceE<rsquo>s cache before it is refreshed.


=head2 DeviceRegistration => Str

Describes if the device is currently registered with SageMaker Edge
Manager.


=head2 _request_id => Str


=cut

