
package Paws::DocDB::EventCategoriesMessage;
  use Moose;
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::EventCategoriesMap]', request_name => 'EventCategoriesMap', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[L<Paws::DocDB::EventCategoriesMap>]

A list of event category maps.


=head2 _request_id => Str


=cut

