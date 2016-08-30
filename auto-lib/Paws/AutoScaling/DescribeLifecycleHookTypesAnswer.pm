
package Paws::AutoScaling::DescribeLifecycleHookTypesAnswer;
  use Moose;
  has LifecycleHookTypes => (is => 'ro', isa => 'ArrayRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLifecycleHookTypesAnswer

=head1 ATTRIBUTES


=head2 LifecycleHookTypes => ArrayRef[Str]

The lifecycle hook types.




=cut

