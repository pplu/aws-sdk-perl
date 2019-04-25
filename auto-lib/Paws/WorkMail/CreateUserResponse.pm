
package Paws::WorkMail::CreateUserResponse;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateUserResponse

=head1 ATTRIBUTES


=head2 UserId => Str

The information regarding the newly created user.


=head2 _request_id => Str


=cut

1;