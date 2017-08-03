
package Paws::CloudFormation::DescribeStackSetOutput;
  use Moose;
  has StackSet => (is => 'ro', isa => 'Paws::CloudFormation::StackSet');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackSetOutput

=head1 ATTRIBUTES


=head2 StackSet => L<Paws::CloudFormation::StackSet>

The specified stack set.


=head2 _request_id => Str


=cut

