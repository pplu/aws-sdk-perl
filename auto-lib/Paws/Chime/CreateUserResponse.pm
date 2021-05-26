
package Paws::Chime::CreateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::Chime::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::Chime::User>




=head2 _request_id => Str


=cut

