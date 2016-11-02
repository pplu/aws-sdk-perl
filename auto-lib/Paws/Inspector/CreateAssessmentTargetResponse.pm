
package Paws::Inspector::CreateAssessmentTargetResponse;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'assessmentTargetArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN that specifies the assessment target that is created.


=head2 _request_id => Str


=cut

1;