
package Paws::AutoScaling::ProcessesType {
  use Moose;
  with 'Paws::API::ResultParser';
  has Processes => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::ProcessType]');

}
1;