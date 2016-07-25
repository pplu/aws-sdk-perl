
package Paws::Inspector::DescribeAssessmentRunsResponse;
  use Moose;
  has AssessmentRuns => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentRun]', traits => ['Unwrapped'], xmlname => 'assessmentRuns' , required => 1);
  has FailedItems => (is => 'ro', isa => 'HashRef[Paws::Inspector::FailedItemDetails]', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRuns => ArrayRef[L<Paws::Inspector::AssessmentRun>]

Information about the assessment run.



=head2 B<REQUIRED> FailedItems => HashRef[L<Paws::Inspector::FailedItemDetails>]

Assessment run details that cannot be described. An error code is
provided for each failed item.




=cut

1;