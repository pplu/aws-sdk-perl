
package Paws::WorkDocs::GetCurrentUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::WorkDocs::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetCurrentUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::WorkDocs::User>

Metadata of the user.


=head2 _request_id => Str


=cut

