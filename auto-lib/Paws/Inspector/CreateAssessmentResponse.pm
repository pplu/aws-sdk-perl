
package Paws::Inspector::CreateAssessmentResponse;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'assessmentArn' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentResponse

=head1 ATTRIBUTES


=head2 AssessmentArn => Str

  The ARN specifying the assessment that is created.


=cut

1;