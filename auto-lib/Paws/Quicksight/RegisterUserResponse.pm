
package Paws::Quicksight::RegisterUserResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has User => (is => 'ro', isa => 'Paws::Quicksight::User');
  has UserInvitationUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RegisterUserResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 User => L<Paws::Quicksight::User>

The user name.


=head2 UserInvitationUrl => Str

The URL the user visits to complete registration and provide a
password. This is returned only for users with an identity type of
C<QUICKSIGHT>.


=head2 _request_id => Str


=cut

