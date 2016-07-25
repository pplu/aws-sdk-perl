
package Paws::Inspector::DescribeAssessmentTargetsResponse;
  use Moose;
  has AssessmentTargets => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentTarget]', traits => ['Unwrapped'], xmlname => 'assessmentTargets' , required => 1);
  has FailedItems => (is => 'ro', isa => 'HashRef[Paws::Inspector::FailedItemDetails]', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTargetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargets => ArrayRef[L<Paws::Inspector::AssessmentTarget>]

Information about the assessment targets.



=head2 B<REQUIRED> FailedItems => HashRef[L<Paws::Inspector::FailedItemDetails>]

Assessment target details that cannot be described. An error code is
provided for each failed item.




=cut

1;