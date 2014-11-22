
package Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;