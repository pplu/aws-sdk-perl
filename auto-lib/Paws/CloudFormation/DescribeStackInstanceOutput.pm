
package Paws::CloudFormation::DescribeStackInstanceOutput;
  use Moose;
  has StackInstance => (is => 'ro', isa => 'Paws::CloudFormation::StackInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackInstanceOutput

=head1 ATTRIBUTES


=head2 StackInstance => L<Paws::CloudFormation::StackInstance>

The stack instance that matches the specified request parameters.


=head2 _request_id => Str


=cut

