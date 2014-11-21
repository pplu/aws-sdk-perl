
package Aws::CodeDeploy::CreateApplicationOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has applicationId => (is => 'ro', isa => 'Str');

}
1;