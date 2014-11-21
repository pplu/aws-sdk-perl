
package Aws::RDS::EventCategoriesMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventCategoriesMap]');

}
1;