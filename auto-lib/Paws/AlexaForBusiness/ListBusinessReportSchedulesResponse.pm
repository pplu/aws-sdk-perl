
package Paws::AlexaForBusiness::ListBusinessReportSchedulesResponse;
  use Moose;
  has BusinessReportSchedules => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::BusinessReportSchedule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListBusinessReportSchedulesResponse

=head1 ATTRIBUTES


=head2 BusinessReportSchedules => ArrayRef[L<Paws::AlexaForBusiness::BusinessReportSchedule>]

The schedule of the reports.


=head2 NextToken => Str

The token used to list the remaining schedules from the previous API
call.


=head2 _request_id => Str


=cut

1;