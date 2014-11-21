
package Aws::SimpleWorkflow::ActivityTaskStatus {
  use Moose;
  with 'AWS::API::ResultParser';
  has cancelRequested => (is => 'ro', isa => 'Bool', required => 1);

}
1;