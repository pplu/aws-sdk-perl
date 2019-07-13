
package Paws::XRay::GetGroupResult;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::XRay::Group');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetGroupResult

=head1 ATTRIBUTES


=head2 Group => L<Paws::XRay::Group>

The group that was requested. Contains the name of the group, the ARN
of the group, and the filter expression that assigned to the group.


=head2 _request_id => Str


=cut

