
package Paws::IoT::ListActiveViolationsResponse;
  use Moose;
  has ActiveViolations => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ActiveViolation]', traits => ['NameInRequest'], request_name => 'activeViolations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListActiveViolationsResponse

=head1 ATTRIBUTES


=head2 ActiveViolations => ArrayRef[L<Paws::IoT::ActiveViolation>]

The list of active violations.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

