package Aws::ElasticBeanstalk::Instance {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str');
}
1
