
package Paws::AutoScaling::ActivityType {
  use Moose;
  with 'Paws::API::ResultParser';
  has Activity => (is => 'ro', isa => 'Paws::AutoScaling::Activity');

}
1;