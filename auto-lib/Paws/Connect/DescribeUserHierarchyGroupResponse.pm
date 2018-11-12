
package Paws::Connect::DescribeUserHierarchyGroupResponse;
  use Moose;
  has HierarchyGroup => (is => 'ro', isa => 'Paws::Connect::HierarchyGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUserHierarchyGroupResponse

=head1 ATTRIBUTES


=head2 HierarchyGroup => L<Paws::Connect::HierarchyGroup>

Returns a C<HierarchyGroup> object.


=head2 _request_id => Str


=cut

