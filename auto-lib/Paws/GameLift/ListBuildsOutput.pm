
package Paws::GameLift::ListBuildsOutput;
  use Moose;
  has Builds => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Build]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListBuildsOutput

=head1 ATTRIBUTES


=head2 Builds => ArrayRef[L<Paws::GameLift::Build>]

Collection of build records that match the request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;