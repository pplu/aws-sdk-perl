
package Aws::CodeDeploy::BatchGetApplicationsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has applicationsInfo => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::ApplicationInfo]');

}
1;