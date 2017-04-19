
package Paws::CodeStar::ListTeamMembersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TeamMembers => (is => 'ro', isa => 'ArrayRef[Paws::CodeStar::TeamMember]', traits => ['NameInRequest'], request_name => 'teamMembers' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListTeamMembersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 B<REQUIRED> TeamMembers => ArrayRef[L<Paws::CodeStar::TeamMember>]

A list of team member objects for the project.


=head2 _request_id => Str


=cut

1;