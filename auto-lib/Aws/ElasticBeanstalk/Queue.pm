package Aws::ElasticBeanstalk::Queue {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
  has URL => (is => 'ro', isa => 'Str');
}
1
