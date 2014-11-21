
package Aws::CodeDeploy::GetApplicationOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has application => (is => 'ro', isa => 'Aws::CodeDeploy::ApplicationInfo');

}
1;