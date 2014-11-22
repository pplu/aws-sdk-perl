
package Paws::CodeDeploy::GetApplicationOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has application => (is => 'ro', isa => 'Paws::CodeDeploy::ApplicationInfo');

}
1;