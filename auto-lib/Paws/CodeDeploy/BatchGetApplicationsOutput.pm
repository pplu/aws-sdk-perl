
package Paws::CodeDeploy::BatchGetApplicationsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has applicationsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::ApplicationInfo]');

}
1;