
package Paws::SimpleWorkflow::ActivityTaskStatus {
  use Moose;
  with 'Paws::API::ResultParser';
  has cancelRequested => (is => 'ro', isa => 'Bool', required => 1);

}
1;