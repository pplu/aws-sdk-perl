
package Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer

=head1 ATTRIBUTES

=head2 TerminationPolicyTypes => ArrayRef[Str]

  

The Termination policies supported by Auto Scaling. They are:
C<OldestInstance>, C<OldestLaunchConfiguration>, C<NewestInstance>,
C<ClosestToNextInstanceHour>, and C<Default>.











=cut

