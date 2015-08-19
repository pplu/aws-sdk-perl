package Paws::ElasticBeanstalk::SingleInstanceHealth {
  use Moose;
  has ApplicationMetrics => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationMetrics');
  has Causes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Color => (is => 'ro', isa => 'Str');
  has HealthStatus => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LaunchedAt => (is => 'ro', isa => 'Str');
  has System => (is => 'ro', isa => 'Paws::ElasticBeanstalk::SystemStatus');
}
1;
