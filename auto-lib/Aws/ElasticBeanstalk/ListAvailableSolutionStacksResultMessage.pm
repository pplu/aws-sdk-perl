
package Aws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;