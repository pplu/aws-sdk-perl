
package Paws::NimbleStudio::ListLaunchProfileMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::LaunchProfileMembership]', traits => ['NameInRequest'], request_name => 'members');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListLaunchProfileMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::NimbleStudio::LaunchProfileMembership>]

A list of members.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

