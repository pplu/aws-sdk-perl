
package Paws::AutoScaling::AutoScalingGroupsType;
  use Moose;
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::AutoScalingGroup]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingGroupsType

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroups => ArrayRef[L<Paws::AutoScaling::AutoScalingGroup>]

The groups.


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 _request_id => Str


=cut

