
package Paws::RedShift::EventCategoriesMessage;
  use Moose;
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EventCategoriesMap]', request_name => 'EventCategoriesMap', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[L<Paws::RedShift::EventCategoriesMap>]

A list of event categories descriptions.




=cut

