
package Paws::CodeDeploy::CreateApplicationOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has applicationId => (is => 'ro', isa => 'Str');

}
1;