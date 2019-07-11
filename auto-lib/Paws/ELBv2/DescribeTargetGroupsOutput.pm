
package Paws::ELBv2::DescribeTargetGroupsOutput;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has TargetGroups => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetGroup]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTargetGroupsOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 TargetGroups => ArrayRef[L<Paws::ELBv2::TargetGroup>]

Information about the target groups.


=head2 _request_id => Str


=cut

