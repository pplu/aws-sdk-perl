
package Paws::Inspector::DescribeAssessmentRunsResponse;
  use Moose;
  has AssessmentRuns => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentRun]', traits => ['NameInRequest'], request_name => 'assessmentRuns' , required => 1);
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentRunsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRuns => ArrayRef[L<Paws::Inspector::AssessmentRun>]

Information about the assessment run.


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Assessment run details that cannot be described. An error code is
provided for each failed item.


=head2 _request_id => Str


=cut

1;