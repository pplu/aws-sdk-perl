
package Aws::AutoScaling::ActivityType {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activity => (is => 'ro', isa => 'Aws::AutoScaling::Activity');

}
1;