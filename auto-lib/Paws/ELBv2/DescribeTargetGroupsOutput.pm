
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

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 TargetGroups => ArrayRef[L<Paws::ELBv2::TargetGroup>]

Information about the target groups.


=head2 _request_id => Str


=cut

