
package Paws::AutoScaling::PolicyARNType {
  use Moose;
  with 'Paws::API::ResultParser';
  has PolicyARN => (is => 'ro', isa => 'Str');

}
1;