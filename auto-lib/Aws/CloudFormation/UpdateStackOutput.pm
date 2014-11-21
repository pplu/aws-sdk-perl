
package Aws::CloudFormation::UpdateStackOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
1;