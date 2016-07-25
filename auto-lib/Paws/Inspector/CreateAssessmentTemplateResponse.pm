
package Paws::Inspector::CreateAssessmentTemplateResponse;
  use Moose;
  has AssessmentTemplateArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'assessmentTemplateArn' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN that specifies the assessment template that is created.




=cut

1;