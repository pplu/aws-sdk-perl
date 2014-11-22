
package Paws::AutoScaling::EnterStandbyAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Activity]');

}
1;