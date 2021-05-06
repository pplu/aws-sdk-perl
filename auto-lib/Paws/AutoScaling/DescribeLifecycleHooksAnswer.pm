
package Paws::AutoScaling::DescribeLifecycleHooksAnswer;
  use Moose;
  has LifecycleHooks => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LifecycleHook]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLifecycleHooksAnswer

=head1 ATTRIBUTES


=head2 LifecycleHooks => ArrayRef[L<Paws::AutoScaling::LifecycleHook>]

The lifecycle hooks for the specified group.


=head2 _request_id => Str


=cut

