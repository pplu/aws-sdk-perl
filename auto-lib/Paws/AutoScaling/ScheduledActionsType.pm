
package Paws::AutoScaling::ScheduledActionsType {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledUpdateGroupActions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::ScheduledUpdateGroupAction]');

}
1;