
package Paws::AlexaForBusiness::CreateBusinessReportScheduleResponse;
  use Moose;
  has ScheduleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateBusinessReportScheduleResponse

=head1 ATTRIBUTES


=head2 ScheduleArn => Str

The ARN of the business report schedule.


=head2 _request_id => Str


=cut

1;