
package Paws::Inspector::CreateAssessmentTemplateResponse;
  use Moose;
  has AssessmentTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTemplateArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN that specifies the assessment template that is created.


=head2 _request_id => Str


=cut

1;