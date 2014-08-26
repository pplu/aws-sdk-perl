package Aws::ElasticBeanstalk::Listener {
  use Moose;
  with ('AWS::API::ResultParser');
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
}
1
