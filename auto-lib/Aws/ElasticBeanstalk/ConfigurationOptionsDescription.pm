
package Aws::ElasticBeanstalk::ConfigurationOptionsDescription {
  use Moose;
  with 'AWS::API::ResultParser';
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');

}
1;