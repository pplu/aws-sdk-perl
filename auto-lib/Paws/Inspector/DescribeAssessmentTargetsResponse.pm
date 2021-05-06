
package Paws::Inspector::DescribeAssessmentTargetsResponse;
  use Moose;
  has AssessmentTargets => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentTarget]', traits => ['NameInRequest'], request_name => 'assessmentTargets' , required => 1);
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTargetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargets => ArrayRef[L<Paws::Inspector::AssessmentTarget>]

Information about the assessment targets.


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Assessment target details that cannot be described. An error code is
provided for each failed item.


=head2 _request_id => Str


=cut

1;