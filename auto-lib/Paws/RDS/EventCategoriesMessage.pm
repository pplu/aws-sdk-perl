
package Paws::RDS::EventCategoriesMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::EventCategoriesMap]');

}
1;