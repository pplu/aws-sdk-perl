
package Paws::CodeDeploy::StopDeploymentOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has status => (is => 'ro', isa => 'Str');
  has statusMessage => (is => 'ro', isa => 'Str');

}
1;