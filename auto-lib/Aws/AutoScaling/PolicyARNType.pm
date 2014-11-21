
package Aws::AutoScaling::PolicyARNType {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyARN => (is => 'ro', isa => 'Str');

}
1;