
package Paws::Inspector::CreateAssessmentTargetResponse;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'assessmentTargetArn' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN specifying the assessment target that is created.




=cut

1;