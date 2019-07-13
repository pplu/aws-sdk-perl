
package Paws::XRay::UpdateGroupResult;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::XRay::Group');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateGroupResult

=head1 ATTRIBUTES


=head2 Group => L<Paws::XRay::Group>

The group that was updated. Contains the name of the group that was
updated, the ARN of the group that was updated, and the updated filter
expression assigned to the group.


=head2 _request_id => Str


=cut

