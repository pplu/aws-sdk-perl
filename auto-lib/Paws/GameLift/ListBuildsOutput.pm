
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

A collection of build resources that match the request.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;