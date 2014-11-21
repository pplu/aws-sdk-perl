
package Aws::AutoScaling::TagsType {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::TagDescription]');

}
1;