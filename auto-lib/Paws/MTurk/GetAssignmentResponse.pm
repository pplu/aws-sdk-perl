
package Paws::MTurk::GetAssignmentResponse;
  use Moose;
  has Assignment => (is => 'ro', isa => 'Paws::MTurk::Assignment');
  has HIT => (is => 'ro', isa => 'Paws::MTurk::HIT');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetAssignmentResponse

=head1 ATTRIBUTES


=head2 Assignment => L<Paws::MTurk::Assignment>

The assignment. The response includes one Assignment element.


=head2 HIT => L<Paws::MTurk::HIT>

The HIT associated with this assignment. The response includes one HIT
element.


=head2 _request_id => Str


=cut

1;