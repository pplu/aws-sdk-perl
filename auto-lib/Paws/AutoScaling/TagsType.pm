
package Paws::AutoScaling::TagsType {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TagDescription]');

}
1;