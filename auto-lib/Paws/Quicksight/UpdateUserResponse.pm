
package Paws::Quicksight::UpdateUserResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has User => (is => 'ro', isa => 'Paws::Quicksight::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateUserResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 User => L<Paws::Quicksight::User>

The Amazon QuickSight user.


=head2 _request_id => Str


=cut

