package Aws::SES::SendDataPoint {
  use Moose;
  has Bounces => (is => 'ro', isa => 'Num');
  has Complaints => (is => 'ro', isa => 'Num');
  has DeliveryAttempts => (is => 'ro', isa => 'Num');
  has Rejects => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
}
1
