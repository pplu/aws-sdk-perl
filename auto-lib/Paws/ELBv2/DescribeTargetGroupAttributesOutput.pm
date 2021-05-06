
package Paws::ELBv2::DescribeTargetGroupAttributesOutput;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetGroupAttribute]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTargetGroupAttributesOutput

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::ELBv2::TargetGroupAttribute>]

Information about the target group attributes


=head2 _request_id => Str


=cut

