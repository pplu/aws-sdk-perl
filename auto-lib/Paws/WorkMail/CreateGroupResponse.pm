
package Paws::WorkMail::CreateGroupResponse;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateGroupResponse

=head1 ATTRIBUTES


=head2 GroupId => Str

The ID of the group.


=head2 _request_id => Str


=cut

1;