
package Paws::Neptune::EventCategoriesMessage;
  use Moose;
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::EventCategoriesMap]', request_name => 'EventCategoriesMap', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[L<Paws::Neptune::EventCategoriesMap>]

A list of EventCategoriesMap data types.


=head2 _request_id => Str


=cut

