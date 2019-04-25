
package Paws::Quicksight::ListUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has UserList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::User]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 UserList => ArrayRef[L<Paws::Quicksight::User>]

The list of users.


=head2 _request_id => Str


=cut

