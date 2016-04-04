
package Paws::Inspector::DescribeAssessmentRunsResponse;
  use Moose;
  has AssessmentRuns => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentRun]', traits => ['Unwrapped'], xmlname => 'assessmentRuns' , required => 1);
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRuns => ArrayRef[L<Paws::Inspector::AssessmentRun>]

Information about the assessment run(s).



=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Assessment run details that cannot be described. An error code is
provided for each failed item.




=cut

1;