package Paws::ElasticBeanstalk::CPUUtilization {
  use Moose;
  has IOWait => (is => 'ro', isa => 'Num');
  has IRQ => (is => 'ro', isa => 'Num');
  has Idle => (is => 'ro', isa => 'Num');
  has Nice => (is => 'ro', isa => 'Num');
  has SoftIRQ => (is => 'ro', isa => 'Num');
  has System => (is => 'ro', isa => 'Num');
  has User => (is => 'ro', isa => 'Num');
}
1;
