
package Paws::AutoScaling::DescribeAdjustmentTypesAnswer;
  use Moose;
  has AdjustmentTypes => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::AdjustmentType]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAdjustmentTypesAnswer

=head1 ATTRIBUTES


=head2 AdjustmentTypes => ArrayRef[L<Paws::AutoScaling::AdjustmentType>]

The policy adjustment types.


=head2 _request_id => Str


=cut

