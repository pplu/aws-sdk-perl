
package Paws::AutoScaling::DescribeLifecycleHookTypesAnswer;
  use Moose;
  has LifecycleHookTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLifecycleHookTypesAnswer

=head1 ATTRIBUTES


=head2 LifecycleHookTypes => ArrayRef[Str|Undef]

The lifecycle hook types.


=head2 _request_id => Str


=cut

