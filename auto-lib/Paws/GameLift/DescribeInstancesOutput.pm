
package Paws::GameLift::DescribeInstancesOutput;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Instance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeInstancesOutput

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::GameLift::Instance>]

Collection of objects containing properties for each instance returned.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;