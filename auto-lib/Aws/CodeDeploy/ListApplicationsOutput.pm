
package Aws::CodeDeploy::ListApplicationsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has applications => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;