package Paws::ElasticBeanstalk::SystemStatus;
  use Moose;
  has CPUUtilization => (is => 'ro', isa => 'Paws::ElasticBeanstalk::CPUUtilization');
  has LoadAverage => (is => 'ro', isa => 'ArrayRef[Num]');
1;
