
package Aws::CodeDeploy::GetApplicationRevisionOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has applicationName => (is => 'ro', isa => 'Str');
  has revision => (is => 'ro', isa => 'Aws::CodeDeploy::RevisionLocation');
  has revisionInfo => (is => 'ro', isa => 'Aws::CodeDeploy::GenericRevisionInfo');

}
1;