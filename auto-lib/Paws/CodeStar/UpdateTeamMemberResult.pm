
package Paws::CodeStar::UpdateTeamMemberResult;
  use Moose;
  has ProjectRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectRole' );
  has RemoteAccessAllowed => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'remoteAccessAllowed' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UpdateTeamMemberResult

=head1 ATTRIBUTES


=head2 ProjectRole => Str

The project role granted to the user.


=head2 RemoteAccessAllowed => Bool

Whether a team member is allowed to remotely access project resources
using the SSH public key associated with the user's profile.


=head2 UserArn => Str

The Amazon Resource Name (ARN) of the user whose team membership
attributes were updated.


=head2 _request_id => Str


=cut

1;