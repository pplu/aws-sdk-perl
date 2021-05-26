
package Paws::SageMaker::CreateMonitoringScheduleResponse;
  use Moose;
  has MonitoringScheduleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateMonitoringScheduleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitoringScheduleArn => Str

The Amazon Resource Name (ARN) of the monitoring schedule.


=head2 _request_id => Str


=cut

1;