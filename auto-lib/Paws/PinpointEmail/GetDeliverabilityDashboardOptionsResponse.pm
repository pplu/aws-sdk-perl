
package Paws::PinpointEmail::GetDeliverabilityDashboardOptionsResponse;
  use Moose;
  has DashboardEnabled => (is => 'ro', isa => 'Bool', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDeliverabilityDashboardOptionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardEnabled => Bool

Indicates whether the Deliverability dashboard is enabled. If the value
is C<true>, then the dashboard is enabled.


=head2 _request_id => Str


=cut

