
package Paws::MTurk::ListAssignmentsForHITResponse;
  use Moose;
  has Assignments => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::Assignment]');
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListAssignmentsForHITResponse

=head1 ATTRIBUTES


=head2 Assignments => ArrayRef[L<Paws::MTurk::Assignment>]

The collection of Assignment data structures returned by this call.


=head2 NextToken => Str




=head2 NumResults => Int

The number of assignments on the page in the filtered results list,
equivalent to the number of assignments returned by this call.


=head2 _request_id => Str


=cut

1;