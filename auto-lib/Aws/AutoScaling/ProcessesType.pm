
package Aws::AutoScaling::ProcessesType {
  use Moose;
  with 'AWS::API::ResultParser';
  has Processes => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::ProcessType]');

}
1;