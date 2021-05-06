
package Paws::DMS::DescribeEventCategoriesResponse;
  use Moose;
  has EventCategoryGroupList => (is => 'ro', isa => 'ArrayRef[Paws::DMS::EventCategoryGroup]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEventCategoriesResponse

=head1 ATTRIBUTES


=head2 EventCategoryGroupList => ArrayRef[L<Paws::DMS::EventCategoryGroup>]

A list of event categories.


=head2 _request_id => Str


=cut

1;