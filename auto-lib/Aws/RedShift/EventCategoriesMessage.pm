
package Aws::RedShift::EventCategoriesMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventCategoriesMap]');

}
1;