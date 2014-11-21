
package Aws::AutoScaling::ScheduledActionsType {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledUpdateGroupActions => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::ScheduledUpdateGroupAction]');

}
1;