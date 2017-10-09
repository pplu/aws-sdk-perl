
package Paws::CloudFormation::DescribeStackSetOperationOutput;
  use Moose;
  has StackSetOperation => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackSetOperationOutput

=head1 ATTRIBUTES


=head2 StackSetOperation => L<Paws::CloudFormation::StackSetOperation>

The specified stack set operation.


=head2 _request_id => Str


=cut

