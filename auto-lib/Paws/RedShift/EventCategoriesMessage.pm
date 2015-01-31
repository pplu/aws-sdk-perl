
package Paws::RedShift::EventCategoriesMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EventCategoriesMap]', traits => ['Unwrapped'], xmlname => 'EventCategoriesMap');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventCategoriesMessage

=head1 ATTRIBUTES

=head2 EventCategoriesMapList => ArrayRef[Paws::RedShift::EventCategoriesMap]

  

A list of event categories descriptions.











=cut

