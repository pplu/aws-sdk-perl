
package Paws::ElasticBeanstalk::ConfigurationOptionsDescription {
  use Moose;
  with 'Paws::API::ResultParser';
  has Options => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');

}
1;