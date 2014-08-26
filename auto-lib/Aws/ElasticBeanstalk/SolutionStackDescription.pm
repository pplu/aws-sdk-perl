package Aws::ElasticBeanstalk::SolutionStackDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has PermittedFileTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
}
1
