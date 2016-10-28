
package Paws::Inspector::StartAssessmentRunResponse;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'assessmentRunArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::StartAssessmentRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN of the assessment run that has been started.




=cut

1;