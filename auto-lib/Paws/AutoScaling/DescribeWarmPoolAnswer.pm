
package Paws::AutoScaling::DescribeWarmPoolAnswer;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Instance]');
  has NextToken => (is => 'ro', isa => 'Str');
  has WarmPoolConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::WarmPoolConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeWarmPoolAnswer

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::AutoScaling::Instance>]

The instances that are currently in the warm pool.


=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)


=head2 WarmPoolConfiguration => L<Paws::AutoScaling::WarmPoolConfiguration>

The warm pool configuration details.


=head2 _request_id => Str


=cut

