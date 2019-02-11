
package Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer;
  use Moose;
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer

=head1 ATTRIBUTES


=head2 TerminationPolicyTypes => ArrayRef[Str|Undef]

The termination policies supported by Amazon EC2 Auto Scaling:
C<OldestInstance>, C<OldestLaunchConfiguration>, C<NewestInstance>,
C<ClosestToNextInstanceHour>, C<Default>, C<OldestLaunchTemplate>, and
C<AllocationStrategy>. Currently, the C<OldestLaunchTemplate> and
C<AllocationStrategy> policies are only supported for Auto Scaling
groups with MixedInstancesPolicy.


=head2 _request_id => Str


=cut

