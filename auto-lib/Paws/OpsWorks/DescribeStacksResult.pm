
package Paws::OpsWorks::DescribeStacksResult;
  use Moose;
  has Stacks => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Stack]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStacksResult

=head1 ATTRIBUTES


=head2 Stacks => ArrayRef[L<Paws::OpsWorks::Stack>]

An array of C<Stack> objects that describe the stacks.


=head2 _request_id => Str


=cut

1;