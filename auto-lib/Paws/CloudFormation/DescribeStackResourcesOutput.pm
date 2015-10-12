
package Paws::CloudFormation::DescribeStackResourcesOutput;
  use Moose;
  has StackResources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackResource]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackResourcesOutput

=head1 ATTRIBUTES

=head2 StackResources => ArrayRef[L<Paws::CloudFormation::StackResource>]

  A list of C<StackResource> structures.


=cut

