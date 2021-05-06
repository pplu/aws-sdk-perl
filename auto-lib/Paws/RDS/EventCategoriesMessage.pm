
package Paws::RDS::EventCategoriesMessage;
  use Moose;
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::EventCategoriesMap]', request_name => 'EventCategoriesMap', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::EventCategoriesMessage

=head1 ATTRIBUTES


=head2 EventCategoriesMapList => ArrayRef[L<Paws::RDS::EventCategoriesMap>]

A list of EventCategoriesMap data types.


=head2 _request_id => Str


=cut

