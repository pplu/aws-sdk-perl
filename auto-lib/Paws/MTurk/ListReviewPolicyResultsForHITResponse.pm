
package Paws::MTurk::ListReviewPolicyResultsForHITResponse;
  use Moose;
  has AssignmentReviewPolicy => (is => 'ro', isa => 'Paws::MTurk::ReviewPolicy');
  has AssignmentReviewReport => (is => 'ro', isa => 'Paws::MTurk::ReviewReport');
  has HITId => (is => 'ro', isa => 'Str');
  has HITReviewPolicy => (is => 'ro', isa => 'Paws::MTurk::ReviewPolicy');
  has HITReviewReport => (is => 'ro', isa => 'Paws::MTurk::ReviewReport');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListReviewPolicyResultsForHITResponse

=head1 ATTRIBUTES


=head2 AssignmentReviewPolicy => L<Paws::MTurk::ReviewPolicy>

The name of the Assignment-level Review Policy. This contains only the
PolicyName element.


=head2 AssignmentReviewReport => L<Paws::MTurk::ReviewReport>

Contains both ReviewResult and ReviewAction elements for an Assignment.


=head2 HITId => Str

The HITId of the HIT for which results have been returned.


=head2 HITReviewPolicy => L<Paws::MTurk::ReviewPolicy>

The name of the HIT-level Review Policy. This contains only the
PolicyName element.


=head2 HITReviewReport => L<Paws::MTurk::ReviewReport>

Contains both ReviewResult and ReviewAction elements for a particular
HIT.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;