
package Aws::AutoScaling::ActivitiesType {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;