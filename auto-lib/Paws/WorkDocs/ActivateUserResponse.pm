
package Paws::WorkDocs::ActivateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::WorkDocs::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::ActivateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::WorkDocs::User>

The user information.


=head2 _request_id => Str


=cut

