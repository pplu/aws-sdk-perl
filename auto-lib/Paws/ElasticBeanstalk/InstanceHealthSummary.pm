package Paws::ElasticBeanstalk::InstanceHealthSummary {
  use Moose;
  has Degraded => (is => 'ro', isa => 'Int');
  has Info => (is => 'ro', isa => 'Int');
  has NoData => (is => 'ro', isa => 'Int');
  has Ok => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Severe => (is => 'ro', isa => 'Int');
  has Unknown => (is => 'ro', isa => 'Int');
  has Warning => (is => 'ro', isa => 'Int');
}
1;
