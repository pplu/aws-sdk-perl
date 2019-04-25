
package Paws::Chime::UpdateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::Chime::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::Chime::User>

The updated user details.


=head2 _request_id => Str


=cut

