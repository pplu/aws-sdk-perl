
package Paws::RedShift::EventCategoriesMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EventCategoriesMap]');

}
1;