
package Paws::GroundStation::GetMinuteUsageResponse;
  use Moose;
  has EstimatedMinutesRemaining => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'estimatedMinutesRemaining');
  has IsReservedMinutesCustomer => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isReservedMinutesCustomer');
  has TotalReservedMinuteAllocation => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalReservedMinuteAllocation');
  has TotalScheduledMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalScheduledMinutes');
  has UpcomingMinutesScheduled => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'upcomingMinutesScheduled');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetMinuteUsageResponse

=head1 ATTRIBUTES


=head2 EstimatedMinutesRemaining => Int

Estimated number of minutes remaining for an account, specific to the
month being requested.


=head2 IsReservedMinutesCustomer => Bool

Returns whether or not an account has signed up for the reserved
minutes pricing plan, specific to the month being requested.


=head2 TotalReservedMinuteAllocation => Int

Total number of reserved minutes allocated, specific to the month being
requested.


=head2 TotalScheduledMinutes => Int

Total scheduled minutes for an account, specific to the month being
requested.


=head2 UpcomingMinutesScheduled => Int

Upcoming minutes scheduled for an account, specific to the month being
requested.


=head2 _request_id => Str


=cut

