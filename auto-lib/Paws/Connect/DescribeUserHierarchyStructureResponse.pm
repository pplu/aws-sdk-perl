
package Paws::Connect::DescribeUserHierarchyStructureResponse;
  use Moose;
  has HierarchyStructure => (is => 'ro', isa => 'Paws::Connect::HierarchyStructure');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUserHierarchyStructureResponse

=head1 ATTRIBUTES


=head2 HierarchyStructure => L<Paws::Connect::HierarchyStructure>

Information about the hierarchy structure.


=head2 _request_id => Str


=cut

