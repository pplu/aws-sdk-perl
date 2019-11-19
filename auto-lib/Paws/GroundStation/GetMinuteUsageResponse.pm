
package Paws::GroundStation::GetMinuteUsageResponse;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::GroundStation::Types qw//;
  has EstimatedMinutesRemaining => (is => 'ro', isa => Int);
  has IsReservedMinutesCustomer => (is => 'ro', isa => Bool);
  has TotalReservedMinuteAllocation => (is => 'ro', isa => Int);
  has TotalScheduledMinutes => (is => 'ro', isa => Int);
  has UpcomingMinutesScheduled => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TotalScheduledMinutes' => {
                                            'type' => 'Int'
                                          },
               'UpcomingMinutesScheduled' => {
                                               'type' => 'Int'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IsReservedMinutesCustomer' => {
                                                'type' => 'Bool'
                                              },
               'EstimatedMinutesRemaining' => {
                                                'type' => 'Int'
                                              },
               'TotalReservedMinuteAllocation' => {
                                                    'type' => 'Int'
                                                  }
             },
  'NameInRequest' => {
                       'UpcomingMinutesScheduled' => 'upcomingMinutesScheduled',
                       'TotalScheduledMinutes' => 'totalScheduledMinutes',
                       'TotalReservedMinuteAllocation' => 'totalReservedMinuteAllocation',
                       'EstimatedMinutesRemaining' => 'estimatedMinutesRemaining',
                       'IsReservedMinutesCustomer' => 'isReservedMinutesCustomer'
                     }
}
;
    return $Params_map;
  }

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

