package Aws::OpsWorks::WeeklyAutoScalingSchedule {
  use Moose;
  has Friday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Monday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Saturday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Sunday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Thursday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Tuesday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Wednesday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
}
1;
