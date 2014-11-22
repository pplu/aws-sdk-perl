
package Paws::AutoScaling::ActivitiesType {
  use Moose;
  with 'Paws::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Activity]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;