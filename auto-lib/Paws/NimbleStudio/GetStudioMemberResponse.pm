
package Paws::NimbleStudio::GetStudioMemberResponse;
  use Moose;
  has Member => (is => 'ro', isa => 'Paws::NimbleStudio::StudioMembership', traits => ['NameInRequest'], request_name => 'member');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetStudioMemberResponse

=head1 ATTRIBUTES


=head2 Member => L<Paws::NimbleStudio::StudioMembership>

The member.


=head2 _request_id => Str


=cut

