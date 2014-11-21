
package Aws::OpsWorks::CloneStackResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
1;