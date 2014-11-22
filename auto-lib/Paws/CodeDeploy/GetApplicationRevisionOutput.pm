
package Paws::CodeDeploy::GetApplicationRevisionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has applicationName => (is => 'ro', isa => 'Str');
  has revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation');
  has revisionInfo => (is => 'ro', isa => 'Paws::CodeDeploy::GenericRevisionInfo');

}
1;