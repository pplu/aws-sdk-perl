
package Paws::CloudFormation::DescribeStackEventsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackEvent]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackEventsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of events. If no additional page exists, this value is null.


=head2 StackEvents => ArrayRef[L<Paws::CloudFormation::StackEvent>]

A list of C<StackEvents> structures.


=head2 _request_id => Str


=cut

