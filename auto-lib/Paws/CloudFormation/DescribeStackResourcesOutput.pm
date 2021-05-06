
package Paws::CloudFormation::DescribeStackResourcesOutput;
  use Moose;
  has StackResources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackResource]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackResourcesOutput

=head1 ATTRIBUTES


=head2 StackResources => ArrayRef[L<Paws::CloudFormation::StackResource>]

A list of C<StackResource> structures.


=head2 _request_id => Str


=cut

