
package Paws::XRay::CreateGroupResult;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::XRay::Group');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::CreateGroupResult

=head1 ATTRIBUTES


=head2 Group => L<Paws::XRay::Group>

The group that was created. Contains the name of the group that was
created, the ARN of the group that was generated based on the group
name, and the filter expression that was assigned to the group.


=head2 _request_id => Str


=cut

