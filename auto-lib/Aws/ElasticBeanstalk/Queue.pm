package Aws::ElasticBeanstalk::Queue {
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has URL => (is => 'ro', isa => 'Str');
}
1;
