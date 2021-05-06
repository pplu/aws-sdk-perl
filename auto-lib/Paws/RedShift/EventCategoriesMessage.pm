
package Paws::RedShift::EventCategoriesMessage;
  use Moose;
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EventCategoriesMap]', request_name => 'EventCategoriesMap', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[L<Paws::RedShift::EventCategoriesMap>]

A list of event categories descriptions.


=head2 _request_id => Str


=cut

