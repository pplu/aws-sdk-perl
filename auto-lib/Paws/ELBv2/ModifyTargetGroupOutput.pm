
package Paws::ELBv2::ModifyTargetGroupOutput;
  use Moose;
  has TargetGroups => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetGroup]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyTargetGroupOutput

=head1 ATTRIBUTES


=head2 TargetGroups => ArrayRef[L<Paws::ELBv2::TargetGroup>]

Information about the modified target group.


=head2 _request_id => Str


=cut

