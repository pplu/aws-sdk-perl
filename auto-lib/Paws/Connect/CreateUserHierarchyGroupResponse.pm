
package Paws::Connect::CreateUserHierarchyGroupResponse;
  use Moose;
  has HierarchyGroupArn => (is => 'ro', isa => 'Str');
  has HierarchyGroupId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUserHierarchyGroupResponse

=head1 ATTRIBUTES


=head2 HierarchyGroupArn => Str

The Amazon Resource Name (ARN) of the hierarchy group.


=head2 HierarchyGroupId => Str

The identifier of the hierarchy group.


=head2 _request_id => Str


=cut

