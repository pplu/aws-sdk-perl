
package Paws::CloudFormation::DescribeStacksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Stack]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStacksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of stacks. If no additional page exists, this value is null.


=head2 Stacks => ArrayRef[L<Paws::CloudFormation::Stack>]

A list of stack structures.


=head2 _request_id => Str


=cut

